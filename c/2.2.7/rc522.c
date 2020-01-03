#include <string.h>
#include "rc522.h"
#include <wiringPi.h>
#include <stdio.h>
#include <stdint.h>

void MFRC522_HAL_init(void);
void MFRC522_HAL_write(unsigned char addr, unsigned char val);
unsigned char MFRC522_HAL_read(unsigned char addr);
void MFRC522_HAL_Delay(unsigned int ms);

//Function comment: read card storage capacity
//Input parameter ： serNum--Pass in the card serial number
//Returned value ： Successfully put back the card capacity
uint8_t MFRC522_SelectTag(uint8_t *serNum) 
{     
	uint8_t  i;     
	uint8_t  status;     
	uint8_t  size;     
	uint8_t recvBits;     
	uint8_t  buffer[9];
	//     
	buffer[0] = PICC_ANTICOLL1;	// anticollision code1     
	buffer[1] = 0x70;
	buffer[6] = 0x00;						     
	for (i=0; i<4; i++)					
	{
		buffer[i+2] = *(serNum+i);	//buffer[2]-buffer[5] is the serial number of the card
		buffer[6]  ^=	*(serNum+i);	// card-verified code
	}
	//
	CalulateCRC(buffer, 7, &buffer[7]);	//buffer[7]-buffer[8] is RCR-verified code
	ClearBitMask(Status2Reg,0x08);
	status =PcdComMF522(PCD_TRANSCEIVE, buffer, 9, buffer, &recvBits);
	//
	if ((status == MI_OK) && (recvBits == 0x18))    
		size = buffer[0];     
	else    
		size = 0;
	//	     
	return size; 
}

void delay_ns(uint32_t ns)
{
    uint32_t i;
    uint32_t j;
    for(i=0;i<ns;i++)
    {
        for(j=0;j<100;j++){}
    }
}


void WriteRawRC(uint8_t addr, uint8_t val) {
	MFRC522_HAL_write(addr, val);
}

uint8_t ReadRawRC(uint8_t addr) {
	return MFRC522_HAL_read(addr);
}

char PcdReset(void)  //Function: reset RC522
{
    
    WriteRawRC(CommandReg,PCD_RESETPHASE);  //Write RC632 register, reset 
	WriteRawRC(CommandReg,PCD_RESETPHASE);	//Write RC632 register, reset
    delay_ns(10); 
    
    WriteRawRC(ModeReg,0x3D);            //communicate with Mifare card, CRC initial value 0x6363   
    WriteRawRC(TReloadRegL,30);           //Write RC632 register
    WriteRawRC(TReloadRegH,0);
    WriteRawRC(TModeReg,0x8D);
    WriteRawRC(TPrescalerReg,0x3E);
	
	WriteRawRC(TxAutoReg,0x40);
    
    return MI_OK;
}

void InitRc522(void) //initialize RC522
{
    MFRC522_HAL_init();
    PcdReset();  			// reset RC522
    PcdAntennaOff();	// Turn off the antenna 
    MFRC522_HAL_Delay(2);  		// Delay 2ms
    PcdAntennaOn();		//Turn on the antenna 
    M500PcdConfigISOType( 'A' ); // Set working mode 
}

void Reset_RC522(void) //Reset RC522
{
    PcdReset();				
    PcdAntennaOff();	
    MFRC522_HAL_Delay(2);  		 
    PcdAntennaOn();		 	
} 
/*
Function: search card 
 Parameter comment：   req_code :card search mode 
            [IN]:0x52 = all cards in the induction area that meet the 14443A standard
                 0x26 = find a card that has not entered sleeping mode
            pTagType[out] : card type code 
Return: Successfully returned MI_OK 
*/
char PcdRequest(uint8_t   req_code,uint8_t *pTagType)
{
	char status;  
	uint8_t   unLen;
	uint8_t   ucComMF522Buf[MAXRLEN];  	// MAXRLEN  18

	ClearBitMask(Status2Reg,0x08);	//Clear RC522 register bit,/ receive data command 
	WriteRawRC(BitFramingReg,0x07); //Write RC632 register 
	SetBitMask(TxControlReg,0x03);  //Set the RC522 register bit  
 
	ucComMF522Buf[0] = req_code; 	  
	
	status = PcdComMF522(PCD_TRANSCEIVE,ucComMF522Buf,1,ucComMF522Buf,&unLen); //Communicate with ISO14443 card via rc522. 
	
	if ((status == MI_OK) && (unLen == 0x10))
	{    
		*pTagType     = ucComMF522Buf[0];
		*(pTagType+1) = ucComMF522Buf[1];
	}
	else
	{   status = MI_ERR;   }  
	return status;
}    
/*
Function: anti-collision
Parameter Comment: psnr[out] card serial number, 4 bytes
Return: MI_OK is returned successfully
 */
char PcdAnticoll(uint8_t *pSnr)
{
    char status;
    uint8_t   i,snr_check=0;
    uint8_t   unLen;
    uint8_t   ucComMF522Buf[MAXRLEN]; 
    
    ClearBitMask(Status2Reg,0x08);  
    WriteRawRC(BitFramingReg,0x00); 
    ClearBitMask(CollReg,0x80);    
 
    ucComMF522Buf[0] = PICC_ANTICOLL1;   //PICC_ANTICOLL1 = 0x93
    ucComMF522Buf[1] = 0x20;
	
    status = PcdComMF522(PCD_TRANSCEIVE,ucComMF522Buf,2,ucComMF522Buf,&unLen); 
											 
    if (status == MI_OK)
    {
    	 for (i=0; i<4; i++)
         {   
             *(pSnr+i)  = ucComMF522Buf[i];  
             snr_check ^= ucComMF522Buf[i];
         }
         if (snr_check != ucComMF522Buf[i])
         {   status = MI_ERR;    }
    }   
    SetBitMask(CollReg,0x80);
    return status;
}
/*
Function: select card
Parameter Comment：psnr[out] card serial number, 4 bytes 
Return: MI_OK is returned successfully
*/
char PcdSelect(uint8_t *pSnr)
{
    char status;
    uint8_t   i;
    uint8_t   unLen;
    uint8_t   ucComMF522Buf[MAXRLEN]; 
    
    ucComMF522Buf[0] = PICC_ANTICOLL1;
    ucComMF522Buf[1] = 0x70;
    ucComMF522Buf[6] = 0;
	
    for (i=0; i<4; i++)
    {
    	ucComMF522Buf[i+2] = *(pSnr+i);
    	ucComMF522Buf[6]  ^= *(pSnr+i);
    }
		
    CalulateCRC(ucComMF522Buf,7,&ucComMF522Buf[7]); //Calculate CRC16 function with MF522 and verify data  
    ClearBitMask(Status2Reg,0x08);
    status = PcdComMF522(PCD_TRANSCEIVE,ucComMF522Buf,9,ucComMF522Buf,&unLen);
    if ((status == MI_OK) && (unLen == 0x18))
    {   status = MI_OK;  }
    else
    {   status = MI_ERR;    }

    return status;
}
/*
Function: verify the card password
Parameter Comment auth_mode[IN]: password verification mode  
            0x60 = Verify A key 
            0x61 = Verify B key  
        addr[IN]: block address 
        pKey[IN]: sector password 
        psnr[in]: card serial number 
Return: Successfully return MI_OK    
*/
char PcdAuthState(uint8_t   auth_mode,uint8_t   addr,uint8_t *pKey,uint8_t *pSnr)
{
    char   status;
    uint8_t   unLen;
   	int i=0;
    uint8_t   ucComMF522Buf[MAXRLEN];  //MAXRLEN 18
	  
    ucComMF522Buf[0] = auth_mode;		
    ucComMF522Buf[1] = addr;				
    memcpy(&ucComMF522Buf[2], pKey, 6); 
    memcpy(&ucComMF522Buf[8], pSnr, 4); 
	 
    status = PcdComMF522(PCD_AUTHENT,ucComMF522Buf,12,ucComMF522Buf,&unLen);
    if((status != MI_OK) || (!(ReadRawRC(Status2Reg) & 0x08)))
    {   status = MI_ERR;   }
    
    return status;
}
/*
Function: read M1 card data
Parameter Comment: addr: block address
        P: read block data, 16 bytes
Return: MI_OK is returned successfully
*/
char PcdRead(uint8_t   addr,uint8_t *p )
{
    char status;
    uint8_t   unLen;
    uint8_t   i,ucComMF522Buf[MAXRLEN]; //18

    ucComMF522Buf[0] = PICC_READ;
    ucComMF522Buf[1] = addr;
    CalulateCRC(ucComMF522Buf,2,&ucComMF522Buf[2]);
    status = PcdComMF522(PCD_TRANSCEIVE,ucComMF522Buf,4,ucComMF522Buf,&unLen);
    if ((status == MI_OK && (unLen == 0x90)))//
    {
        for (i=0; i<16; i++)
        {    *(p +i) = ucComMF522Buf[i];   }
    }
    else
    {   status = MI_ERR;   }
    
    return status;
}
/*
Function: write data to M1 card     
Parameter Comment: addr：block address 
        p ：write data to block, 16 bytes  
Return: MI_OK is returned successfully  
*/
char PcdWrite(uint8_t   addr,uint8_t *p )
{
    char   status;
    uint8_t   unLen;
    uint8_t   i,ucComMF522Buf[MAXRLEN]; 
    
    ucComMF522Buf[0] = PICC_WRITE;
    ucComMF522Buf[1] = addr;
    CalulateCRC(ucComMF522Buf,2,&ucComMF522Buf[2]);
 
    status = PcdComMF522(PCD_TRANSCEIVE,ucComMF522Buf,4,ucComMF522Buf,&unLen);

    if ((status != MI_OK) || (unLen != 4) || ((ucComMF522Buf[0] & 0x0F) != 0x0A))
    {   status = MI_ERR;   }
        
    if (status == MI_OK)
    {
        for (i=0; i<16; i++)//Write 16Byte data to FIFO    
        {    
        	ucComMF522Buf[i] = *(p +i);   
        }
        CalulateCRC(ucComMF522Buf,16,&ucComMF522Buf[16]);

        status = PcdComMF522(PCD_TRANSCEIVE,ucComMF522Buf,18,ucComMF522Buf,&unLen);
        if ((status != MI_OK) || (unLen != 4) || ((ucComMF522Buf[0] & 0x0F) != 0x0A))
        {   status = MI_ERR;   }
    }
    
    return status;
}
/*
Function： command the card to enter the sleep mode  
Return：MI_OK is returned successfully 
*/
char PcdHalt(void)
{
    uint8_t   status;

	
    uint8_t   unLen;
    uint8_t   ucComMF522Buf[MAXRLEN]; //MAXRLEN==18
	   status=status;
    ucComMF522Buf[0] = PICC_HALT;
    ucComMF522Buf[1] = 0;
    CalulateCRC(ucComMF522Buf,2,&ucComMF522Buf[2]);
 
    status = PcdComMF522(PCD_TRANSCEIVE,ucComMF522Buf,4,ucComMF522Buf,&unLen);

    return MI_OK;
}
/*
Function：Calculate CRC16 function with MF522  
Parameter Comment： pin：to read CRC data  
         len：  data length 
         pout： Calculate results of CRC   
*/
void CalulateCRC(uint8_t *pIn ,uint8_t   len,uint8_t *pOut )
{
    uint8_t   i,n;
    ClearBitMask(DivIrqReg,0x04);//CRCIrq = 0  
    WriteRawRC(CommandReg,PCD_IDLE);
    SetBitMask(FIFOLevelReg,0x80);//clear FIFO
    	  
		for (i=0; i<len; i++)
    {  
			WriteRawRC(FIFODataReg, *(pIn +i));   }
		//begin to calculate 
			WriteRawRC(CommandReg, PCD_CALCCRC);
				//Wait until the calculation is complete  
			i = 0xFF;
    do 
    {
        n = ReadRawRC(DivIrqReg);
        i--;
    }
    while ((i!=0) && !(n&0x04));//CRCIrq = 1
			
		pOut [0] = ReadRawRC(CRCResultRegL);
    pOut [1] = ReadRawRC(CRCResultRegM);
}
/*
set working mode of RC632   
*/
char M500PcdConfigISOType(uint8_t   type)
{
   if (type == 'A')                     //ISO14443_A
   { 
        ClearBitMask(Status2Reg,0x08);     
        WriteRawRC(ModeReg,0x3D);
        WriteRawRC(RxSelReg,0x86);
        WriteRawRC(RFCfgReg,0x7F);    
        WriteRawRC(TReloadRegL,30); 
        WriteRawRC(TReloadRegH,0);
        WriteRawRC(TModeReg,0x8D);
        WriteRawRC(TPrescalerReg,0x3E);
        delay_ns(1000);
        PcdAntennaOn();		
   }
   else{ return 1; }    

   return MI_OK;				
}
/*
Function：set RC522 register bit 
Parameter Comment：reg[IN]:register address 
          mask[IN]:set value 
*/
void SetBitMask(uint8_t   reg,uint8_t   mask)  
{
    char   tmp = 0x0;
    tmp = ReadRawRC(reg);				
    WriteRawRC(reg,tmp | mask);   
}
/*
Function：clear RC522 register bit 
Parameter Comment: reg[IN]: register address 
          mask[IN]: clear bit value 
*/
void ClearBitMask(uint8_t   reg,uint8_t   mask)  
{
    char   tmp = 0x0;
    tmp = ReadRawRC(reg);   
    WriteRawRC(reg, tmp & ~mask);  // clear bit mask
} 
/*
Function：communicate with ISO14443 via RC522 
Parameter Comment: command[IN]:RC522 command word 
        pin[IN]: Data sent to the card via RC522   
        InLenByte[IN]:The byte length of the data sent 
        pOut[OUT]: The received card returns data  
        pOutLenBit[OUT]：Returns the bit length of the data  
*/
char PcdComMF522(uint8_t Command,uint8_t *pIn,uint8_t InLenByte,uint8_t *pOut,uint8_t *pOutLenBit)
{
    char status = MI_ERR;
    uint8_t   irqEn   = 0x00;
    uint8_t   waitFor = 0x00;
    uint8_t   lastBits;
    uint8_t   n;
    uint16_t  i;
	
    switch (Command)
    {
		case PCD_AUTHENT:    //verify password
				 irqEn   = 0x12;
				 waitFor = 0x10;
				 break;
		case PCD_TRANSCEIVE: // Send and receive data. 
				 irqEn   = 0x77;
				 waitFor = 0x30;
				 break;
		default:
				 break;
    }
    WriteRawRC(ComIEnReg,irqEn|0x80);	
    ClearBitMask(ComIrqReg,0x80);			//Clear all interrupt bits 
    WriteRawRC(CommandReg,PCD_IDLE);	
    SetBitMask(FIFOLevelReg,0x80);	 	//clear FIFO buffer memory  
    

		
    for (i=0; i<InLenByte; i++)
    {   
				WriteRawRC(FIFODataReg, pIn [i]);  }
				WriteRawRC(CommandReg, Command);	 
			if (Command == PCD_TRANSCEIVE)
				{  
					SetBitMask(BitFramingReg,0x80);  }	 //Start transmission 
    
		
		
  //  i = 600;// According to clock frequency to adjustment, operation M1 card has maximum waiting time 25ms 
				i = 2000;
			do 
				{
					n = ReadRawRC(ComIrqReg);
					i--;
				}
			while ((i!=0) && !(n&0x01) && !(n&waitFor));
				
		
			ClearBitMask(BitFramingReg,0x80);
			if (i!=0)
			{    
        if(!(ReadRawRC(ErrorReg)&0x1B))
        {
            status = MI_OK;
            // printf("test_n:%d",n);
            if (n & irqEn & 0x01)
            {   status = MI_NOTAGERR;   }
            if (Command == PCD_TRANSCEIVE)
            {
               	n = ReadRawRC(FIFOLevelReg);
              	lastBits = ReadRawRC(ControlReg) & 0x07;
                if (lastBits)
                {   *pOutLenBit = (n-1)*8 + lastBits;   }
                else
                {   *pOutLenBit = n*8;   }
                if (n == 0)
                {   n = 1;    }
                if (n > MAXRLEN)
                {   n = MAXRLEN;   }
                for (i=0; i<n; i++)
                {   pOut [i] = ReadRawRC(FIFODataReg);    }
            }
        }
				
        else
        {   status = MI_ERR;   }
        
    }
    SetBitMask(ControlReg,0x80);           // stop timer now
    WriteRawRC(CommandReg,PCD_IDLE); 
    return status;
}
/*
Turn on the antenna 
There should be at least 1ms interval between each antenna start or close  
*/
void PcdAntennaOn(void)
{
    uint8_t   i;
    i = ReadRawRC(TxControlReg);
    if (!(i & 0x03))
    {
        SetBitMask(TxControlReg, 0x03);
    }
}
/*
Turn off the antenna 
*/
void PcdAntennaOff(void)
{
	ClearBitMask(TxControlReg, 0x03); 
}
