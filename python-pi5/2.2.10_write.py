#!/usr/bin/env python3
# -*- coding: utf8 -*-

import MFRC522
import signal
import time

continue_reading = True

# Capture SIGINT signal for cleanup when the script is interrupted
def end_read(signal, frame):
    global continue_reading
    print("\nCtrl+C captured, ending operation.")
    continue_reading = False

# Bind the SIGINT signal handler function
signal.signal(signal.SIGINT, end_read)

# Create an object of the class MFRC522
rfid_reader = MFRC522.MFRC522()

# Define the default key (6 bytes, default all 0xFF)
default_key = [0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF]

# Welcome message
print("Please place your RFID card on the reader...")
print("Press Ctrl-C to stop.")


while continue_reading:
    # Scan RFID card
    (status, TagType) = rfid_reader.MFRC522_Request(rfid_reader.PICC_REQIDL)

    # If a card is detected
    if status == rfid_reader.MI_OK:
        print("RFID card detected!")

        # Get the UID of the card
        (status, uid) = rfid_reader.MFRC522_SelectTagSN()

        # If we have the UID, continue
        if status == rfid_reader.MI_OK:
            # Print UID
            uid_str = ''.join(['%02X' % i for i in uid])
            print("Card UID: %s" % uid_str)

            # Prepare data to write
            write_data = input("Please enter data to write to the card (up to 16 characters): ")
            # Ensure data does not exceed 16 characters
            write_data = write_data[:16]
            # Convert string to byte list, pad to 16 bytes
            data_to_write = [0x00]*16
            string_bytes = write_data.encode('utf-8')
            for i in range(len(string_bytes)):
                data_to_write[i] = string_bytes[i]

            # Choose block to write to (avoid sector control blocks, such as the last block of each sector)
            block_num = 8  # For example, choose block 8

            # Authenticate
            status = rfid_reader.MFRC522_Auth(rfid_reader.PICC_AUTHENT1A, block_num, default_key, uid)

            if status == rfid_reader.MI_OK:
                print("Block %d authentication successful" % block_num)

                # Write data
                rfid_reader.MFRC522_Write(block_num, data_to_write)
                print("Data has been written to the card")

                # Read the data just written for verification
                print("Reading data from block %d:" % block_num)
                rfid_reader.MFRC522_Read(block_num)

                # Stop encryption
                rfid_reader.MFRC522_StopCrypto1()

                # Operation completed, exit loop
                continue_reading = False
            else:
                print("Authentication failed")
                rfid_reader.MFRC522_StopCrypto1()
        else:
            print("Unable to get card UID")
    else:
        # Wait for a while before trying again
        time.sleep(0.5)
