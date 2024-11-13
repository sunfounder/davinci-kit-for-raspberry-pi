.. note::

    Hello, welcome to the SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts Community on Facebook! Dive deeper into Raspberry Pi, Arduino, and ESP32 with fellow enthusiasts.

    **Why Join?**

    - **Expert Support**: Solve post-sale issues and technical challenges with help from our community and team.
    - **Learn & Share**: Exchange tips and tutorials to enhance your skills.
    - **Exclusive Previews**: Get early access to new product announcements and sneak peeks.
    - **Special Discounts**: Enjoy exclusive discounts on our newest products.
    - **Festive Promotions and Giveaways**: Take part in giveaways and holiday promotions.

    👉 Ready to explore and create with us? Click [|link_sf_facebook|] and join today!

1.10 Rotating fan
==================


In this project, we will make a spinning star sprite and fan.

.. image:: img/1.17_header.png

Required Components
-----------------------

.. image:: img/1.17_list.png

Build the Circuit
---------------------

.. image:: img/1.17_image117.png

Load the Code and See What Happens
---------------------------------------

Load the code file (``1.10_rotating_fan.sb3``) to Scratch 3.

After clicking the green flag on the stage, click on the star sprite，then it and the motor will rotate clockwise; you can change the direction of rotation by clicking on the two **arrow** sprites. When you click on the **star** sprite again, it and the motor will stop rotating.

Tips on Sprite
----------------
Delete the default sprite, then select the **Star** sprite and the **Arrow1** sprite, and copy Arrow1 once.

.. image:: img/1.17_motor1.png

In the **Costumes** option, change the Arrow2 sprite to a different direction costume.

.. image:: img/1.17_motor2.png

Adjust the size and position of the sprite appropriately.

.. image:: img/1.17_motor3.png


Tips on Codes
--------------

**Flow Chart**

.. image:: img/1.17_scratch.png

In this code, you will see 2 pink blocks, turn left and turn right, which are our custom blocks (functions).

.. image:: img/1.17_new_block.png

**How to Make a Block?**

Let's learn how to make a block (function). The block (function) can be used to simplify your program, especially if you perform the same operation multiple times. Putting these operations into a newly declared block can be very convenient for you.

First find **My Blocks** in the block palette, then select **Make a Block**.

.. image:: img/1.17_motor4.png

Enter the name of the new block.

.. image:: img/1.17_motor5.png

After writing the function of the new block in the coding area, save it and then you can find the block in the blocks palette.

.. image:: img/1.17_motor6.png

**turn left**

This is the code inside the turn left block to make the motor rotate counterclockwise.

.. image:: img/1.17_motor12.png
  :width: 400

**turn right**

This is the code inside the turn right block to make the motor rotate clockwise.



.. image:: img/1.17_motor11.png
  :width: 400



