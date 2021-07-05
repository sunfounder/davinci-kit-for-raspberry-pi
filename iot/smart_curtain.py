# -*- coding: utf-8 -*-

from time import sleep
import sys
import ADC0834
import cloud4rpi
import rpi
from MOTOR import motor
import RPi.GPIO as GPIO  # pylint: disable=F0401

# Put your device token here. To get the token,
# sign up at https://cloud4rpi.io and create a device.
DEVICE_TOKEN = 'M1vyY81aq3TQLbnFuepUFhA5'

# Constants
RELAY_PIN = 20

# Change these values depending on your requirements.
DATA_SENDING_INTERVAL = 60  # secs
DIAG_SENDING_INTERVAL = 650  # secs
POLL_INTERVAL = 0.5  # 500 ms

# Configure GPIO library
GPIO.setmode(GPIO.BCM)
GPIO.setup(RELAY_PIN, GPIO.OUT)
ADC0834.setup()
move = motor(13,19,26)

# Handler for the button or switch variable
def relay_control(value=None):
    GPIO.output(RELAY_PIN, value)
    return GPIO.input(RELAY_PIN)

def getValue():
	analogVal = ADC0834.getResult()
	if analogVal > 100:
		move.clockwise()
		sleep(5)
		move.stop()
	elif analogVal < 20:
		move.contrarotate()
		sleep(5)
		move.stop()
	return analogVal

def main():
    variables = {
        'LED On': {
            'type': 'bool',
            'value': False,
            'bind': relay_control
        },
        'CPU Temp': {
            'type': 'numeric',
            'bind': getValue
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
        sleep(1)

        data_timer = 0
        diag_timer = 0

        while True:
            if data_timer <= 0:
                device.publish_data()
                data_timer = DATA_SENDING_INTERVAL

            if diag_timer <= 0:
                device.publish_diag()
                diag_timer = DIAG_SENDING_INTERVAL

            sleep(POLL_INTERVAL)
            diag_timer -= POLL_INTERVAL
            data_timer -= POLL_INTERVAL

    except KeyboardInterrupt:
        cloud4rpi.log.info('Keyboard interrupt received. Stopping...')
        mt.stop
        GPIO.cleanup()

    except Exception as e:
        error = cloud4rpi.get_error_message(e)
        cloud4rpi.log.exception("ERROR! %s %s", error, sys.exc_info()[0])

    finally:
        sys.exit(0)


if __name__ == '__main__':
    main()
