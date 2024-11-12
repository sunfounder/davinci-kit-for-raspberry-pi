#!/usr/bin/env python3
# -*- coding: utf8 -*-

import MFRC522
import signal
import time

# Flag to control the reading loop
continue_reading = True

# Capture SIGINT signal to allow graceful exit when the script is interrupted
def end_read(signal, frame):
    global continue_reading
    print("\nCtrl+C captured, ending read operation.")
    continue_reading = False

# Bind the SIGINT signal handler to the `end_read` function
signal.signal(signal.SIGINT, end_read)

# Create an instance of the MFRC522 class
rfid_reader = MFRC522.MFRC522()

# Define the default key (6 bytes, default is all 0xFF)
default_key = [0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF]

# Define the block number to read (must match the block used during writing)
block_num = 8  # For example, block 8

# Welcome message
print("Please place your RFID card on the reader...")
print("Press Ctrl-C to stop.")

# Continuously check for RFID cards
while continue_reading:
    # Scan for RFID cards
    (status, TagType) = rfid_reader.MFRC522_Request(rfid_reader.PICC_REQIDL)

    # If a card is detected
    if status == rfid_reader.MI_OK:
        print("RFID card detected!")

        # Get the UID of the card
        (status, uid) = rfid_reader.MFRC522_SelectTagSN()

        # If UID was successfully retrieved, proceed
        if status == rfid_reader.MI_OK:
            # Convert UID list to a hexadecimal string
            uid_str = ''.join(['%02X' % i for i in uid])
            print("Card UID: %s" % uid_str)

            # Authenticate with the card using the default key
            status = rfid_reader.MFRC522_Auth(rfid_reader.PICC_AUTHENT1A, block_num, default_key, uid)

            if status == rfid_reader.MI_OK:
                print("Block %d authentication successful" % block_num)

                # Read data from the specified block
                read_status, data = rfid_reader.MFRC522_Read(block_num)
                print(f"MFRC522_Read return type: {type(read_status)}, Data: {data}")

                if read_status == rfid_reader.MI_OK and data:
                    print(f"Sector {block_num} {data}")
                    # Convert byte data to string and remove any padding null bytes
                    read_data = ''.join([chr(byte) for byte in data]).rstrip('\x00')
                    print("Read data: %s" % read_data)
                else:
                    print("Data read failed, status code: %s" % read_status)

                # Stop encryption on the card
                rfid_reader.MFRC522_StopCrypto1()
            else:
                print("Authentication failed, status code: %s" % status)
                rfid_reader.MFRC522_StopCrypto1()
        else:
            print("Unable to get card UID")
    else:
        # If no card is detected, wait for a short period before retrying
        time.sleep(0.5)
