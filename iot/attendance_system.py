# -*- coding: utf-8 -*-

import time
import sys
import cloud4rpi
import rpi
import RPi.GPIO as GPIO  # pylint: disable=F0401
from mfrc522 import SimpleMFRC522

# Put your device token here. To get the token,
# sign up at https://cloud4rpi.io and create a device.
DEVICE_TOKEN = 'M1vyY81aq3TQLbnFuepUFhA5'

reader = SimpleMFRC522()

sign_in_list=[]

sign_in_statistics = {}

# Change these values depending on your requirements.
DATA_SENDING_INTERVAL = 60  # secs
DIAG_SENDING_INTERVAL = 650  # secs
POLL_INTERVAL = 0.5  # 500 ms

RedPin = 13
GreenPin = 11

# Configure GPIO library
GPIO.setmode(GPIO.BOARD)
GPIO.setup(RedPin, GPIO.OUT, initial=GPIO.HIGH)
GPIO.setup(GreenPin, GPIO.OUT, initial=GPIO.HIGH)
	
def get_time():
	time.time()
	year = str(time.strftime('%Y',time.localtime(time.time())))
	month = str(time.strftime('%m',time.localtime(time.time())))
	day = str(time.strftime('%d',time.localtime(time.time())))
	hour = str(time.strftime('%H',time.localtime(time.time())))
	minute = str(time.strftime('%M',time.localtime(time.time())))
	second = str(time.strftime('%S',time.localtime(time.time())))
	present_time = year + '.' + month + '.' + day + '.' + hour + '.' + minute + '.' + second
	present_date = year + '.' + month + '.' + day
	return present_date, present_time
	
def get_id():
	sign_in = False
	GPIO.output(GreenPin, GPIO.LOW)
	GPIO.output(RedPin, GPIO.HIGH)
	print("Reading...Please place the card...")
	id, text = reader.read()
	print("ID: %s\nText: %s" % (id,text))
	GPIO.output(RedPin, GPIO.LOW)
	GPIO.output(GreenPin, GPIO.HIGH)
	if not id in sign_in_list:
		sign_in = True	
		sign_in_list.append(id)
		present_date, present_time = get_time()
		sign_in_statistics[id] = present_time
		with open('Sign In Form.' + present_date + '.csv', 'w') as f:
			[f.write('{0}  {1}\n'.format(key, value)) for key, value in sign_in_statistics.items()]
	return sign_in	
	
def get_num():
	return len(sign_in_list)

def main():
    # Put variable declarations here
    # Available types: 'bool', 'numeric', 'string', 'location'
    variables = {
        'LED On': {
            'type': 'bool',
            'value': False,
            'bind': get_id
        },
        'CPU Temp': {
            'type': 'numeric',
            'bind': get_num
        },
    }

    diagnostics = {
        'CPU Temp': rpi.cpu_temp,
        'IP Address': rpi.ip_address,
        'Host': rpi.host_name,
        'Operating System': rpi.os_name,
        'Client Version:': cloud4rpi.__version__,
    }
    device = cloud4rpi.connect(DEVICE_TOKEN)

    # Use the following 'device' declaration
    # to enable the MQTT traffic encryption (TLS).
    #
    # tls = {
    #     'ca_certs': '/etc/ssl/certs/ca-certificates.crt'
    # }
    # device = cloud4rpi.connect(DEVICE_TOKEN, tls_config=tls)

    try:
        device.declare(variables)
        device.declare_diag(diagnostics)

        device.publish_config()

        # Adds a 1 second delay to ensure device variables are created
        time.sleep(1)

        data_timer = 0
        diag_timer = 0

        while True:
            if data_timer <= 0:
                device.publish_data()
                data_timer = DATA_SENDING_INTERVAL

            if diag_timer <= 0:
                device.publish_diag()
                diag_timer = DIAG_SENDING_INTERVAL

            time.sleep(POLL_INTERVAL)
            diag_timer -= POLL_INTERVAL
            data_timer -= POLL_INTERVAL

    except KeyboardInterrupt:
        cloud4rpi.log.info('Keyboard interrupt received. Stopping...')
        GPIO.cleanup()

    except Exception as e:
        error = cloud4rpi.get_error_message(e)
        cloud4rpi.log.exception("ERROR! %s %s", error, sys.exc_info()[0])

    finally:
        sys.exit(0)


if __name__ == '__main__':
    main()
