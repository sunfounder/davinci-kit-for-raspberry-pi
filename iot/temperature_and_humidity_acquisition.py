# -*- coding: utf-8 -*-

from time import sleep
import sys
import cloud4rpi
import DHT11
import rpi
import RPi.GPIO as GPIO  # pylint: disable=F0401

# Put your device token here. To get the token,
# sign up at https://cloud4rpi.io and create a device.
DEVICE_TOKEN = '__YOUR_DEVICE_TOKEN__'

# Change these values depending on your requirements.
DATA_SENDING_INTERVAL = 60  # secs
DIAG_SENDING_INTERVAL = 650  # secs
POLL_INTERVAL = 0.5  # 500 ms

dht11 = DHT11.DHT11(17)

def getTem():
    result = dht11.get_result()
    while True:
        if result:
            break
        else:
            result = dht11.get_result()
    return result[1]

def getHum():
    result = dht11.get_result()
    while True:
        if result:
            break
        else:
            result = dht11.get_result()
    return result[0]

def main():
    # Available types: 'bool', 'numeric', 'string', 'location'
    variables = {
        'Room Temp': {
            'type': 'numeric',
            'bind': getTem
        },
        'CPU Temp': {
            'type': 'numeric',
            'bind': getHum
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

    except Exception as e:
        error = cloud4rpi.get_error_message(e)
        cloud4rpi.log.exception("ERROR! %s %s", error, sys.exc_info()[0])

    finally:
        sys.exit(0)


if __name__ == '__main__':
    main()
