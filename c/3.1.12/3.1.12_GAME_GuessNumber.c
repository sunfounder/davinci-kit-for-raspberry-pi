
#include <stdio.h>
#include <stdlib.h>
#include <wiringPi.h>
#include <wiringPiI2C.h>
#include <string.h>
#include <time.h>
#include <stdbool.h>

#define LENS  4
#define ROWS  4 
#define COLS  4
#define BUTTON_NUM (ROWS * COLS)


unsigned char KEYS[BUTTON_NUM]={  
  '1','2','3','A',
  '4','5','6','B',
  '7','8','9','C',
  '*','0','#','D'};

unsigned char rowPins[ROWS] = {1, 4, 5, 6}; 
unsigned char colPins[COLS] = {12, 3, 2, 0};

int LCDAddr = 0x27;
int BLEN = 1;
int fd;
int pointValue = 0;
int count = 0;
int upper = 99;
int lower = 0;

//lcd
void write_word(int data){
	int temp = data;
	if ( BLEN == 1 )
		temp |= 0x08;
	else
		temp &= 0xF7;
	wiringPiI2CWrite(fd, temp);
}

void send_command(int comm){
	int buf;
	// Send bit7-4 firstly
	buf = comm & 0xF0;
	buf |= 0x04;			// RS = 0, RW = 0, EN = 1
	write_word(buf);
	delay(2);
	buf &= 0xFB;			// Make EN = 0
	write_word(buf);

	// Send bit3-0 secondly
	buf = (comm & 0x0F) << 4;
	buf |= 0x04;			// RS = 0, RW = 0, EN = 1
	write_word(buf);
	delay(2);
	buf &= 0xFB;			// Make EN = 0
	write_word(buf);
}

void send_data(int data){
	int buf;
	// Send bit7-4 firstly
	buf = data & 0xF0;
	buf |= 0x05;			// RS = 1, RW = 0, EN = 1
	write_word(buf);
	delay(2);
	buf &= 0xFB;			// Make EN = 0
	write_word(buf);

	// Send bit3-0 secondly
	buf = (data & 0x0F) << 4;
	buf |= 0x05;			// RS = 1, RW = 0, EN = 1
	write_word(buf);
	delay(2);
	buf &= 0xFB;			// Make EN = 0
	write_word(buf);
}

void lcd_init(){
	send_command(0x33);	// Must initialize to 8-line mode at first
	delay(5);
	send_command(0x32);	// Then initialize to 4-line mode
	delay(5);
	send_command(0x28);	// 2 Lines & 5*7 dots
	delay(5);
	send_command(0x0C);	// Enable display without cursor
	delay(5);
	send_command(0x01);	// Clear Screen
	wiringPiI2CWrite(fd, 0x08);
}

void lcd_clear(){
	send_command(0x01);	//clear Screen
}

void write(int x, int y, char data[]){
	int addr, i;
	int tmp;
	if (x < 0)  x = 0;
	if (x > 15) x = 15;
	if (y < 0)  y = 0;
	if (y > 1)  y = 1;

	// Move cursor
	addr = 0x80 + 0x40 * y + x;
	send_command(addr);
	
	tmp = strlen(data);
	for (i = 0; i < tmp; i++){
		send_data(data[i]);
	}
}


//keypad
void keyClear(unsigned char* a){
    for (int i=0; i<BUTTON_NUM; i++){
        a[i] = 0;
    }
}

void keyRead(unsigned char* result){
    int index;
    int count = 0;
    keyClear(result);
    for(int i=0 ; i<ROWS ; i++ ){
        digitalWrite(rowPins[i], HIGH);
        for(int j =0 ; j < COLS ; j++){
            index = i * ROWS + j;
            if(digitalRead(colPins[j]) == 1){
                result[count]=KEYS[index];
                count += 1;
            }
        }
        delay(1);
        digitalWrite(rowPins[i], LOW);
    }
}

bool keyCompare(unsigned char* a, unsigned char* b){
    for (int i=0; i<BUTTON_NUM; i++){
        if (a[i] != b[i]){
            return false;
        }
    }
    return true;
}

void keyCopy(unsigned char* a, unsigned char* b){
    for (int i=0; i<BUTTON_NUM; i++){
        a[i] = b[i];
    }
}

void keyPrint(unsigned char* a){
    if (a[0] != 0){
        printf("%c",a[0]);
    }
    for (int i=1; i<BUTTON_NUM; i++){
        if (a[i] != 0){
            printf(", %c",a[i]);
        }
    }
    printf("\n");
}

int keyIndexOf(const char value){
    for (int i=0; i<BUTTON_NUM; i++){
        if ((const char)KEYS[i] == value){
            return i;
        }
    }
    return -1;
}

// Convert Integer to String to display in LCD
void Int2Str(unsigned char *str, unsigned int intnum)
{    
	unsigned int i, Div = 1000000000 , j = 0, Status = 0;       
	for (i = 0; i < 10; i++)    
	{        
		str[j++] = (intnum / Div) + '0';        
		intnum = intnum % Div;      
		Div /= 10;  
		if ((str[j-1] == '0') & (Status == 0))        
		{            
			j = 0;        
		}        
		else        
		{            
			Status++;        
			}    
	}
}


// Start from here
void init(void){
	fd = wiringPiI2CSetup(LCDAddr);
	lcd_init();
	lcd_clear();
	for(int i=0 ; i<4 ; i++) {
        pinMode(rowPins[i], OUTPUT);
        pinMode(colPins[i], INPUT);
    }
	lcd_clear();
	write(0, 0, "Welcome!");
	write(0, 1, "Press A to go!");
}

void init_new_value(void){
	srand(time(0));
	pointValue = rand()%100;
	upper = 99;
	lower = 0;
	count = 0;
	printf("point is %d\n",pointValue);
}

bool detect_point(void){
	if(count > pointValue){
		if(count < upper){
			upper = count;
		}
	}
	else if(count < pointValue){
		if(count > lower){
			lower = count;
		}
	}
	else if(count = pointValue){
		count = 0;
		return 1;
	}
	count = 0;
	return 0;
}

void lcd_show_input(bool result){
	char *str=NULL;
	str =(char*)malloc(sizeof(char)*3);
	lcd_clear();
	if (result == 1){
		write(0,1,"You've got it!");
		delay(5000);
		init_new_value();
		lcd_show_input(0);
		return;
	}
	write(0,0,"Enter number:");
	Int2Str(str,count);
	write(13,0,str);
	Int2Str(str,lower);
	write(0,1,str);
	write(3,1,"<Point<");
	Int2Str(str,upper);
	write(12,1,str);
}

int main(){
	unsigned char pressed_keys[BUTTON_NUM];
    unsigned char last_key_pressed[BUTTON_NUM];
	if(wiringPiSetup() == -1){ //when initialize wiring failed,print messageto screen
        printf("setup wiringPi failed !");
        return 1; 
    }
	init();
	init_new_value();
	while(1){
		keyRead(pressed_keys);
		bool comp = keyCompare(pressed_keys, last_key_pressed);
		if (!comp){
			if(pressed_keys[0] != 0){
				bool result = 0;
				if(pressed_keys[0] == 'A'){
					init_new_value();
					lcd_show_input(0);
				}
				else if(pressed_keys[0] == 'D'){
					result = detect_point();
					lcd_show_input(result);
				}
				else if(pressed_keys[0] >='0' && pressed_keys[0] <= '9'){
					count = count * 10;
					count = count + (pressed_keys[0] - 48);
					if (count>=10){
						result = detect_point();
					}
					lcd_show_input(result);
				}
			}
			keyCopy(last_key_pressed, pressed_keys);
		}
		delay(100);
	}
	return 0;	
}
