What is Nodejs？
---------------------------

Node.js was released in May 2009 and developed by Ryan Dahl. It is a JavaScript runtime environment based on the Chrome V8 engine. It uses an event-driven, non-blocking I/O model to allow JavaScript to run on the server-side development platform.

Simply put, Node.js is JavaScript running on the server. If you are familiar with Javascript, then you will easily learn Node.js.

Nodejs usually uses the command ``npm install xxx`` to install third-party packages, which requires us to install the npm tool, similar to the pip tool in python.

Install or update nodejs and npm
------------------------------------------

Run the following commands to install and update nodejs and npm.

.. raw:: html

    <run></run>

.. code-block::

    sudo apt-get update
    sudo apt-get install nodejs
    sudo apt-get install npm 
    sudo npm install npm -g

Then check the current Node version with the following command.

.. raw:: html

    <run></run>

.. code-block::

    node -v

The following command checks the current npm version.

.. raw:: html

    <run></run>

.. code-block::

    npm -v