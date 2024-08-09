from gpiozero import OutputDevice, InputDevice
import time


class DHT11():
    MAX_DELAY_COUINT = 100
    BIT_1_DELAY_COUNT = 10
    BITS_LEN = 40

    def __init__(self, pin, pull_up=False):
        self._pin = pin
        self._pull_up = pull_up


    def read_data(self):
        bit_count = 0
        delay_count = 0
        bits = ""

        # -------------- send start --------------
        gpio = OutputDevice(self._pin)
        gpio.off()
        time.sleep(0.02)

        gpio.close()
        gpio = InputDevice(self._pin, pull_up=self._pull_up)

        # -------------- wait response --------------
        while gpio.value == 1:
            pass
        
        # -------------- read data --------------
        while bit_count < self.BITS_LEN:
            while gpio.value == 0:
                pass

            # st = time.time()
            while gpio.value == 1:
                delay_count += 1
                # break
                if delay_count > self.MAX_DELAY_COUINT:
                    break
            if delay_count > self.BIT_1_DELAY_COUNT:
                bits += "1"
            else:
                bits += "0"

            delay_count = 0
            bit_count += 1

        # -------------- verify --------------
        humidity_integer = int(bits[0:8], 2)
        humidity_decimal = int(bits[8:16], 2)
        temperature_integer = int(bits[16:24], 2)
        temperature_decimal = int(bits[24:32], 2)
        check_sum = int(bits[32:40], 2)

        _sum = humidity_integer + humidity_decimal + temperature_integer + temperature_decimal

        # print(bits)
        # print(humidity_integer, humidity_decimal, temperature_integer, temperature_decimal)
        # print(f'sum:{_sum}, check_sum:{check_sum}')
        # print()

        if check_sum != _sum:
            humidity = 0.0
            temperature = 0.0
        else:
            humidity = float(f'{humidity_integer}.{humidity_decimal}')
            temperature = float(f'{temperature_integer}.{temperature_decimal}')

        # -------------- return --------------
        return humidity, temperature


if __name__ == '__main__':
    dht11 = DHT11(17)
    while True:
        humidity, temperature = dht11.read_data()
        print(f"{time.time():.3f}  temperature:{temperature}°C  humidity: {humidity}%")
        time.sleep(2)