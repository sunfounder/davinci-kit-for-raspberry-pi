.. note::

    ¡Hola! Bienvenido a la Comunidad de Entusiastas de SunFounder Raspberry Pi, Arduino y ESP32 en Facebook. Profundiza en Raspberry Pi, Arduino y ESP32 junto a otros entusiastas.

    **¿Por qué unirse?**

    - **Soporte experto**: Resuelve problemas post-venta y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Acceso exclusivo**: Obtén acceso anticipado a anuncios y adelantos de nuevos productos.
    - **Descuentos especiales**: Disfruta de descuentos exclusivos en nuestros productos más recientes.
    - **Promociones y sorteos**: Participa en sorteos y promociones festivas.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo!

.. _create_virtual:

Creación de un Entorno Virtual
======================================
Al usar Raspberry Pi o dispositivos similares, se recomienda instalar paquetes con ``pip`` en un entorno virtual. Esto ofrece aislamiento de dependencias, aumenta la seguridad del sistema, mantiene la limpieza del sistema y facilita la migración y el intercambio de proyectos, simplificando la gestión de dependencias. Estos beneficios hacen que los entornos virtuales sean una herramienta extremadamente importante y útil en el desarrollo en Python.

A continuación se presentan los pasos para crear un entorno virtual:

**1. Crear un entorno virtual**

Primero, necesitas asegurarte de que tu sistema tenga Python instalado. Las versiones de Python 3.3 y posteriores vienen con el módulo ``venv`` para crear entornos virtuales, eliminando la necesidad de una instalación separada. Si estás utilizando Python 2 o una versión anterior a Python 3.3, necesitarás instalar ``virtualenv``.

* Para Python 3:

Las versiones de Python 3.3 y posteriores pueden utilizar directamente el módulo ``venv``:

.. raw:: html

    <run></run>

.. code-block:: shell

    python3 -m venv myenv

Esto creará un entorno virtual llamado ``myenv`` en el directorio actual.

* Para Python 2:

Si todavía estás utilizando Python 2, primero necesitas instalar ``virtualenv``:

.. raw:: html

    <run></run>

.. code-block:: shell

    pip install virtualenv

Luego, crea un entorno virtual:

.. raw:: html

    <run></run>

.. code-block:: shell

    virtualenv myenv

Esto también crea un entorno virtual llamado ``myenv`` en el directorio actual.

**2. Activar el Entorno Virtual**

Después de crear el entorno virtual, necesitas activarlo para su uso.

.. note::

    Cada vez que reinicies la Raspberry Pi o abras un nuevo terminal, necesitarás ejecutar nuevamente el siguiente comando para activar el entorno virtual.

.. raw:: html

    <run></run>

.. code-block:: shell

    source myenv/bin/activate

Una vez que el entorno virtual esté activado, verás el nombre del entorno antes del símbolo del sistema, lo que indica que estás trabajando dentro del entorno virtual.


**3. Instalar Dependencias**

Con el entorno virtual activado, puedes utilizar pip para instalar las dependencias necesarias. Por ejemplo:

.. raw:: html

    <run></run>

.. code-block:: shell

    pip install requests

Esto instalará la biblioteca requests en el entorno virtual actual, en lugar de en el entorno global. Este paso solo necesita hacerse una vez.


**4. Salir del Entorno Virtual**

Cuando hayas terminado tu trabajo y desees salir del entorno virtual, simplemente ejecuta:

.. raw:: html

    <run></run>

.. code-block:: shell

    deactivate

Esto te devolverá al entorno Python global del sistema.

**5. Eliminar el Entorno Virtual**

Si ya no necesitas un entorno virtual en particular, simplemente puedes eliminar el directorio que contiene el entorno virtual:

.. raw:: html

    <run></run>

.. code-block:: shell

    rm -rf myenv