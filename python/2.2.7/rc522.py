import spidev as SPI
import time

class RC522():
    PCD_IDLE = 0x00               
    PCD_AUTHENT = 0x0E              
    PCD_RECEIVE = 0x08              
    PCD_TRANSMIT = 0x04               
    PCD_TRANSCEIVE = 0x0C               
    PCD_RESETPHASE = 0x0F               
    PCD_CALCCRC = 0x03               
    PICC_REQIDL = 0x26               
    PICC_REQALL = 0x52              
    PICC_ANTICOLL1 = 0x93               
    PICC_ANTICOLL2 = 0x95               
    PICC_AUTHENT1A = 0x60              
    PICC_AUTHENT1B = 0x61              
    PICC_READ = 0x30              
    PICC_WRITE = 0xA0               
    PICC_DECREMENT = 0xC0               
    PICC_INCREMENT = 0xC1               
    PICC_RESTORE = 0xC2               
    PICC_TRANSFER = 0xB0               
    PICC_HALT = 0x50
# PAGE 0
    RFU00 = 0x00    
    CommandReg = 0x01    
    ComIEnReg = 0x02    
    DivlEnReg = 0x03    
    ComIrqReg = 0x04    
    DivIrqReg = 0x05
    ErrorReg = 0x06    
    Status1Reg = 0x07    
    Status2Reg = 0x08    
    FIFODataReg = 0x09
    FIFOLevelReg = 0x0A
    WaterLevelReg = 0x0B
    ControlReg = 0x0C
    BitFramingReg = 0x0D
    CollReg = 0x0E
    RFU0F = 0x0F
# PAGE 1     
    RFU10 = 0x10
    ModeReg = 0x11
    TxModeReg = 0x12
    RxModeReg = 0x13
    TxControlReg = 0x14
    TxAutoReg = 0x15
    TxSelReg = 0x16
    RxSelReg = 0x17
    RxThresholdReg = 0x18
    DemodReg = 0x19
    RFU1A = 0x1A
    RFU1B = 0x1B
    MifareReg = 0x1C
    RFU1D = 0x1D
    RFU1E = 0x1E
    SerialSpeedReg = 0x1F
# PAGE 2    
    RFU20 = 0x20  
    CRCResultRegM = 0x21
    CRCResultRegL = 0x22
    RFU23 = 0x23
    ModWidthReg = 0x24
    RFU25 = 0x25
    RFCfgReg = 0x26
    GsNReg = 0x27
    CWGsCfgReg = 0x28
    ModGsCfgReg = 0x29
    TModeReg = 0x2A
    TPrescalerReg = 0x2B
    TReloadRegH = 0x2C
    TReloadRegL = 0x2D
    TCounterValueRegH = 0x2E
    TCounterValueRegL = 0x2F
# PAGE 3      
    RFU30 = 0x30
    TestSel1Reg = 0x31
    TestSel2Reg = 0x32
    TestPinEnReg = 0x33
    TestPinValueReg = 0x34
    TestBusReg = 0x35
    AutoTestReg = 0x36
    VersionReg = 0x37
    AnalogTestReg = 0x38
    TestDAC1Reg = 0x39  
    TestDAC2Reg = 0x3A   
    TestADCReg = 0x3B   
    RFU3C = 0x3C   
    RFU3D = 0x3D   
    RFU3E = 0x3E   
    RFU3F = 0x3F      
             
    def __init__(self):
        self.spi = SPI.SpiDev()
        self.spi.open(0, 0)
        self.spi.max_speed_hz= 15600000
        self.key = [0xff,0xff,0xff,0xff,0xff,0xff]
        self.ct = [0x0]*2
        self.sn = [0x0]*4
    
    def Pcd_start(self):
        self.PcdReset()
        self.PcdAntennaOff()
        time.sleep(0.02)
        self.PcdAntennaOn()
        self.M500PcdConfigISOType( 'A' )
        
    def WriteRawRC(self, reg, Value):
        addr = (reg<<1) & 0x7e
        li = [addr, Value]
        self.spi.xfer2(li)
        
    def ReadRawRC(self, reg):
        addr = ((reg<<1) & 0xfe) | 0x80
        li = [addr, 0xFF]
        value = self.spi.xfer2(li)
        return value[1]
    
    def SetBitMask(self, reg, data):
        tmp = self.ReadRawRC(reg)					
        self.WriteRawRC(reg, tmp | data)
        
    def ClearBitMask(self, reg, data):
        tmp = self.ReadRawRC(reg)					
        self.WriteRawRC(reg, tmp & ~data)
    
    def PcdAntennaOn(self):
        i = self.ReadRawRC(self.TxControlReg)
        if (i & 0x03) == 0:
            self.SetBitMask(self.TxControlReg, 0x03)
            
    def PcdAntennaOff(self):
        self.ClearBitMask(self.TxControlReg, 0x03)
        
    def PcdReset(self):
        self.WriteRawRC(self.CommandReg, self.PCD_RESETPHASE)
        self.WriteRawRC(self.CommandReg, self.PCD_RESETPHASE)
        # time.sleep(0.01)
        self.WriteRawRC(self.ModeReg, 0x3D)
        self.WriteRawRC(self.TReloadRegL, 30) 
        self.WriteRawRC(self.TReloadRegH, 0)
        self.WriteRawRC(self.TModeReg, 0x8D)
        self.WriteRawRC(self.TPrescalerReg, 0x3E)
        self.WriteRawRC(self.TxAutoReg, 0x40)
    
    def M500PcdConfigISOType(self, ty):
        if ty == 'A':
            self.ClearBitMask(self.Status2Reg, 0x08)
            self.WriteRawRC(self.ModeReg, 0x3D)
            self.WriteRawRC(self.RxSelReg, 0x86)
            self.WriteRawRC(self.RFCfgReg, 0x7F) 
            self.WriteRawRC(self.TReloadRegL, 30) 
            self.WriteRawRC(self.TReloadRegH, 0)
            self.WriteRawRC(self.TModeReg, 0x8D)
            self.WriteRawRC(self.TPrescalerReg, 0x3E)
            time.sleep(1)
            self.PcdAntennaOn()
        else:
            return 1
        return 0
    
    def CalulateCRC(self, data):
        self.ClearBitMask(self.DivIrqReg, 0x04)  
        self.WriteRawRC(self.CommandReg, self.PCD_IDLE)
        self.SetBitMask(self.FIFOLevelReg, 0x80)
        for i in range(len(data)):
            self.WriteRawRC(self.FIFODataReg, data[i])
        self.WriteRawRC(self.CommandReg, self.PCD_CALCCRC)
        j = 0xff
        n = 0
        while j != 0 and not(n & 0x04):
            n = self.ReadRawRC(self.DivIrqReg)
            j -=1
        data.append(self.ReadRawRC(self.CRCResultRegL))
        data.append(self.ReadRawRC(self.CRCResultRegM))
        return data
    
    def PcdHalt(self):
        data = [self.PICC_HALT, 0]
        data = self.CalulateCRC(data)
        self.len1 = 0
        status = self.PcdComMF522(self.PCD_TRANSCEIVE, data)
        return status

    def PcdComMF522(self, com, data):
        # print("PcdComMF522")
        data_len = 0
        if com == self.PCD_AUTHENT:
            irqEn = 0x12
            waitFor = 0x10
        elif com == self.PCD_TRANSCEIVE:
            irqEn = 0x77
            waitFor = 0x30
        else:
            irqEn = 0
            waitFor = 0
        self.WriteRawRC(self.ComIEnReg, (irqEn|0x80))	
        self.ClearBitMask(self.ComIrqReg, 0x80)		
        self.WriteRawRC(self.CommandReg, self.PCD_IDLE)	
        self.SetBitMask(self.FIFOLevelReg, 0x80)
        for i in range(len(data)):
            self.WriteRawRC(self.FIFODataReg, data[i])
        self.WriteRawRC(self.CommandReg, com)
        if com == self.PCD_TRANSCEIVE:
            self.SetBitMask(self.BitFramingReg, 0x80)
        try_times = 2000
        n = self.ReadRawRC(self.ComIrqReg)
        # print("ComIrqReg: %s"%n)
        while try_times !=0 and not(n & 0x01)  and not(n & waitFor) :
            n = self.ReadRawRC(self.ComIrqReg)
            # print("ComIrqReg: %s"%n)
            try_times -= 1
        self.ClearBitMask(self.BitFramingReg, 0x80)
        if try_times != 0:
            if not(self.ReadRawRC(self.ErrorReg) & 0x1B):
                status = 0
                # print(n)
                if n & irqEn & 0x01:
                    status = 1
                    return None, status, None
                if com == self.PCD_TRANSCEIVE:
                    n = self.ReadRawRC(self.FIFOLevelReg)
                    # print("FIFOLevelReg: %s"%n)
                    lastBits = self.ReadRawRC(self.ControlReg) & 0x07
                    # print("lastBits: %s"%lastBits)
                    if lastBits:
                        data_len = (n-1)*8 + lastBits
                        # print("data_len: %s"%data_len)
                        # print(data_len)
                    else:
                        data_len = n * 8
                    if n == 0:
                        n = 1
                    if n > 18:
                        n = 18
                    data = []
                    for i in range(n):
                        data.append(self.ReadRawRC(self.FIFODataReg))
                        # print(data[i])
            else:
                status = 2
        self.SetBitMask(self.ControlReg, 0x80)
        self.WriteRawRC(self.CommandReg, self.PCD_IDLE)
        # if 
        return data, status, data_len
    
    def PcdWrite(self, addr, data):
        temp = [self.PICC_WRITE, addr]
        temp = self.CalulateCRC(temp)
        temp, status, data_len = self.PcdComMF522(self.PCD_TRANSCEIVE, temp)
        if status != 0 or data_len != 4 or (temp[0] & 0x0F) != 0x0A:
            status = 2
        if status == 0:
            if len(data) < 16:
                data += [0]*(16 - len(data))
            elif len(data) > 16:
                data = data[0:16]
            temp = data
            temp = self.CalulateCRC(temp)
            temp, status, data_len = self.PcdComMF522(self.PCD_TRANSCEIVE, temp)
            if status != 0 or data_len != 4 or (temp[0] & 0x0F) != 0x0A:
                status = 2
        return status
    
    def PcdRead(self, addr):
        temp = [self.PICC_READ, addr]
        temp = self.CalulateCRC(temp)
        temp, status, data_len = self.PcdComMF522(self.PCD_TRANSCEIVE, temp)
        if status == 0 and data_len == 0x90:
            return status, temp
        else:
            return 2,temp
        
    
    def PcdAuthState(self, mode, addr, key, snr):
        temp = [mode, addr]
        temp += key + snr
        temp, status, _ = self.PcdComMF522(self.PCD_AUTHENT, temp)
        if status != 0 or not(self.ReadRawRC(self.Status2Reg) & 0x08):
            status = 2
        return status

    def PcdSelect(self, snr):
        temp = [self.PICC_ANTICOLL1, 0x70, 0, 0, 0, 0, 0]
        for i in range(4):
            temp[i+2] = snr[i]
            temp[6] ^= snr[i]
        temp = self.CalulateCRC(temp)
        self.ClearBitMask(self.Status2Reg, 0x08)
        temp, status, data_len = self.PcdComMF522(self.PCD_TRANSCEIVE, temp)
        if status == 0 and data_len == 0x18:
            status = 0
        else:
            status = 2
        return status
    
    def PcdAnticoll(self, snr):
        snr_check = 0
        self.ClearBitMask(self.Status2Reg, 0x08) 
        self.WriteRawRC(self.BitFramingReg, 0x00)
        self.ClearBitMask(self.CollReg, 0x80)
        temp = [self.PICC_ANTICOLL1, 0x20]
        temp, status, _ = self.PcdComMF522(self.PCD_TRANSCEIVE, temp)
        # print(temp)
        if  temp == None or len(temp) != 5:
            return 2
        if status == 0:
            for i in range(len(temp)-1):
                snr[i] = temp[i]
                snr_check ^= temp[i]
            if snr_check != temp[4]:
                status = 2
        self.SetBitMask(self.CollReg, 0x80)
        return status
    
    def PcdRequest(self, mode, cardtype):
        # print("PcdRequest")
        temp = [mode]
        self.ClearBitMask(self.Status2Reg, 0x08)
        self.WriteRawRC(self.BitFramingReg, 0x07)
        self.SetBitMask(self.TxControlReg, 0x03)
        temp, status, data_len = self.PcdComMF522(self.PCD_TRANSCEIVE, temp)
        # print("status: %s"%status) 
        if status == 0 and data_len == 0x10:
            cardtype[0] = temp[0]
            cardtype[1] = temp[1]
        else:
            status = 2
        return status
    
    def read_card(self):
        # print("read_card")
        status = self.PcdRequest(self.PICC_REQIDL, self.ct)
        if status == 0:
            status = self.PcdAnticoll(self.sn)
            if self.ct[0] == 0x44:
                print("Card type：Mifare_UltraLight")
            elif self.ct[0] == 4:
                print("Card type：FOne_S50")
            elif self.ct[0] == 2:
                print("Card type：FOne_S70")
            elif self.ct[0] == 8:
                print("Card type：Mifare_Pro(X)")
            print("Card number：",end='')
            for i in self.sn:
                print(hex(i),end='')
                print(',',end='')
            print("\b ")
            if status == 0:
                status = self.PcdSelect(self.sn)
        return status
    
    def write_card_data(self, addr, data):
        # print("write:")
        status = self.read_card()
        if status == 0:
            status = self.PcdAuthState(self.PICC_AUTHENT1A, 3, self.key, self.sn)
        if status == 0:
            status = self.PcdWrite(addr, data)
        if status == 0:
            print("write data：", data[0:16])
        return status

    def read_card_data(self, addr):
        # print("read：")
        data_read = []
        status = self.read_card()
        if status == 0:
            status = self.PcdAuthState(self.PICC_AUTHENT1A, 3, self.key, self.sn)
        if status ==0:
            status, data_read = self.PcdRead(addr)
        if status == 0:
            data_read = [chr(data_read[i]) for i in range(len(data_read))]
            print("data：", data_read[0:16])
        return status
    
if __name__ == "__main__":
    rc = RC522()
    rc.Pcd_start()
    data = [1, 2, 3, 4, 5]
    while True:
        rc.write_card_data(2, data)
        time.sleep(2)
        rc.read_card_data(2)
       
        print("")
    
        
        
            
            
    
            
    
            
            
    
   
        
        
        
              
        
        