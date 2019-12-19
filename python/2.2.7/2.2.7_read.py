from rc522 import RC522

rc = RC522()
rc.Pcd_start()
print("Reading...Please place the card...")
while True:
    status = rc.read_card_data(2)
    if status == 0:
        break