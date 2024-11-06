.. note::

    ¡Hola! Bienvenido a la Comunidad de Entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Sumérgete junto a otros entusiastas en el fascinante mundo de Raspberry Pi, Arduino y ESP32.

    **¿Por qué unirte?**

    - **Soporte Experto**: Resuelve problemas post-venta y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Avances Exclusivos**: Obtén acceso anticipado a nuevos anuncios de productos y adelantos exclusivos.
    - **Descuentos Especiales**: Disfruta de descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones especiales de temporada.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo.

Sistema de Asistencia
========================

En este proyecto, usaremos el módulo RFID MFRC522 y Cloud4RPi para crear un sistema de asistencia. Puedes ver la información de asistencia en Cloud4RPi o abrir el archivo local .csv para ver los registros de asistencia.

Debido a los retrasos en la transmisión de datos en red, el proyecto solo permite registrar la asistencia cuando el LED verde está encendido y cargar los datos cuando el LED rojo está encendido.

Procedimientos Experimentales
--------------------------------

Construye el circuito.

.. image:: img/rfid1.png
	:align: center

Abre el archivo de código.

.. raw:: html

   <run></run>

.. code-block:: 

    cd ~/cloud4rpi-raspberrypi-python
    sudo nano attendance_system.py

Busca la siguiente línea y rellena el token correcto del dispositivo.

.. code-block:: python

    DEVICE_TOKEN = '__YOUR_DEVICE_TOKEN__'

Ejecuta el código.

.. raw:: html

   <run></run>

.. code-block:: 

    sudo python3 attendance_system.py

Ve a Cloud4RPi, agrega un nuevo panel de control llamado **project5** y agrega 2 widgets (un widget de texto y otro de gráfico) a través del botón **Add widget**.

.. image:: img/rfid2.png
	:align: center

Una vez agregados, puedes ver los registros de asistencia para diferentes períodos de tiempo en el widget de gráfico (cuando el valor de LED ON es True, significa que alguien ha registrado asistencia), y luego ver el número de personas que han registrado asistencia en el widget de texto.

También puedes encontrar el archivo ``.csv`` con la fecha en la ruta ``~/cloud4rpi-raspberrypi-python``.

.. image:: img/rfid3.png
	:align: center

Ábrelo con el siguiente comando.

.. raw:: html

   <run></run>

.. code-block:: 

    sudo nano attendance_sheet.2021.06.28.csv


De esta manera, puedes leer los registros de asistencia de diferentes períodos de tiempo. A la izquierda está el ID de los diferentes módulos RFID MFRC522, y a la derecha está la hora de asistencia.

.. image:: img/rfid4.png
	:align: center

.. note::
	
    Si el nombre de la persona está escrito previamente en el módulo RFID MFRC522 y luego se reemplaza el ID con texto en el código (lo cual se explicará más adelante), de esta forma el registro de asistencia muestra el nombre de cada persona en lugar del ID de la tarjeta.

Explicación del Código
-------------------------

.. code-block:: python

    RedPin = 13
    GreenPin = 11

    GPIO.setmode(GPIO.BOARD)
    GPIO.setup(RedPin, GPIO.OUT, initial=GPIO.HIGH)
    GPIO.setup(GreenPin, GPIO.OUT, initial=GPIO.HIGH)

Configura 2 LEDs como salida y establece el valor inicial en alto.

.. code-block:: python

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

La función ``get_time()`` obtiene la marca de tiempo actual y devuelve dos valores. Donde ``present_date`` es precisa hasta el día y ``present_time`` es precisa hasta el segundo.

.. code-block:: python

    attendance = False
	GPIO.output(GreenPin, GPIO.LOW)
	GPIO.output(RedPin, GPIO.HIGH)
	print("Reading...Please place the card...")
	id, text = reader.read()
	print("ID: %s\nText: %s" % (id,text))
	GPIO.output(RedPin, GPIO.LOW)
	GPIO.output(GreenPin, GPIO.HIGH)

Primero, establecemos ``attendance`` en False, lo que significa que nadie ha registrado su asistencia.

Luego, configuramos GreenPin en bajo para encenderlo, y RedPin en alto para mantenerlo apagado, indicando que el sistema de asistencia está funcionando normalmente.

Cuando alguien registra asistencia, se imprimen la identificación y la información de texto de la tarjeta. Si el LED rojo está encendido y el LED verde apagado, significa que el registro es exitoso y el resultado se envía a Cloud4RPi.

Durante este período, el sistema de asistencia está en estado de reposo hasta que comience el siguiente ciclo (con el LED verde encendido).


.. code-block:: python

    if not id in attendance_list:
		attendance = True
		attendance_list.append(id)
		present_date, present_time = get_time()
		attendance_statistics[id] = present_time
		with open('attendance_sheet.' + present_date + '.csv', 'w') as f:
			[f.write('{0}  {1}\n'.format(key, value)) for key, value in attendance_statistics.items()]

Primero determina si el ID está duplicado en ``attendance_list`` mediante una declaración if; si no, significa que el registro es válido y pasa la información de ID a ``attendance_list``. Luego, obtenemos la marca de tiempo actual y usamos el ID como clave del diccionario ``attendance_statistics`` y ``present_time`` como el valor de la clave correspondiente. De esta forma, el diccionario ``attendance_statistics`` almacena la hora de asistencia del ID actual.

Finalmente, escribimos el diccionario ``attendance_statistics`` en un archivo .csv y nombramos el archivo como ``'attendance_sheet.'' + present_date + '.csv'``, para así almacenar la hoja de asistencia en orden cronológico.

.. note::

    Si has registrado el nombre de la persona en el MFRC522 RFID, reemplaza el ``id`` con ``text`` y tu hoja de asistencia registrará el nombre de la persona.

.. code-block:: python

    def get_num():
		return len(attendance_list)

Devuelve la longitud de ``attendance_list``, es decir, el número de personas registradas.

