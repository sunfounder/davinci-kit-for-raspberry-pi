all: write read
write: 2.2.7_RFID_write.c mfrc522_hal_linux.c rc522.c
	gcc -o write 2.2.7_RFID_write.c mfrc522_hal_linux.c rc522.c -lwiringPi

read: 2.2.7_RFID_read.c mfrc522_hal_linux.c rc522.c
	gcc -o read 2.2.7_RFID_read.c mfrc522_hal_linux.c rc522.c -lwiringPi
clean:
	rm write read
