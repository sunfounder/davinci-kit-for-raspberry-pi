from rc522 import RC522

rc = RC522()
rc.Pcd_start()
x = input("Please enter the data to be written:")
print("Reading...Please place the card...")
data = [ord(x[i]) for i in range(len(x))]

while True:
    status = rc.write_card_data(2,data)
    if status == 0:
        break