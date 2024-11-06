.. note::

    ¡Hola! Bienvenido a la Comunidad de Entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Sumérgete profundamente en el mundo de Raspberry Pi, Arduino y ESP32 junto a otros apasionados.

    **¿Por qué unirte?**

    - **Soporte Experto**: Resuelve problemas postventa y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Avances Exclusivos**: Obtén acceso anticipado a nuevos anuncios de productos y adelantos exclusivos.
    - **Descuentos Especiales**: Disfruta de descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones especiales de temporada.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo.

¿Qué es Nodejs?
===================

Node.js fue lanzado en mayo de 2009 y desarrollado por Ryan Dahl. Es un entorno de ejecución para JavaScript basado en el motor V8 de Chrome. Emplea un modelo de E/S no bloqueante y orientado a eventos para permitir que JavaScript se ejecute en la plataforma de desarrollo del lado del servidor.

En pocas palabras, Node.js es JavaScript corriendo en el servidor. Si estás familiarizado con JavaScript, entonces aprenderás Node.js fácilmente.

Node.js usualmente utiliza el comando ``npm install xxx`` para instalar paquetes de terceros, lo que requiere que instalemos la herramienta npm, similar a la herramienta pip en Python.

Instalar o actualizar Node.js y npm
------------------------------------------

Ejecuta los siguientes comandos para instalar y actualizar Node.js y npm.

.. raw:: html

    <run></run>

.. code-block::

    sudo apt-get update
    sudo apt-get install nodejs
    sudo apt-get install npm 
    sudo npm install npm -g

Luego verifica la versión actual de Node con el siguiente comando.

.. raw:: html

    <run></run>

.. code-block::

    node -v

El siguiente comando verifica la versión actual de npm.

.. raw:: html

    <run></run>

.. code-block::

    npm -v