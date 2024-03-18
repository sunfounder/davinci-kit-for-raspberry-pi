
Video 21: Using a HC-SR04 Ultrasonic Sensor For Echolocation
=======================================================================================

This tutorial covers the process of creating an ultrasonic distance sensor with a Raspberry Pi using the HC-SR04 sensor. 
This video explains the principles of echolocation, introduces the necessary components, demonstrates the wiring setup, 
and walks through the coding process step by step. 
It emphasizes the importance of precise timing in the code execution for accurate distance measurements and promotes good engineering practices.

1. **Introduction to Echolocation**: Using sound to detect objects' positions, inspired by bats and whales.
2. **Components Overview**: Introduction to the HC-SR04 ultrasonic sensor and its connection to Raspberry Pi.
3. **Wiring Setup**: Connecting the HC-SR04 sensor to Raspberry Pi GPIO pins for power, ground, trigger, and echo.
4. **Coding Process**: Python code walkthrough for generating ultrasonic pulses, triggering the sensor, and measuring echo return time.
5. **Timing Considerations**: Importance of precise timing for accurate distance measurement.
6. **Good Engineering Practices**: Stressing planning and understanding of code before implementation.
7. **Waiting for Echo Pin**: Utilizing a while loop to wait for the echo pin to go high.
8. **Recording Start Time**: Capturing system time when echo pin goes high to mark measurement start.
9. **Measuring Ping Travel Time**: Calculating ping travel time by determining time difference between echo pin going high and low.
10. **Converting Units**: Multiplying ping travel time by a million for readability.
11. **Adding Delay**: Introducing delay after each measurement to prevent multiple echoes.
12. **Calculating Distance**: Using speed of sound and ping travel time to calculate distance to target.


**Video**

.. raw:: html

    <iframe width="700" height="500" src="https://www.youtube.com/embed/SoAGLXoQ5XI?si=OPMqLtQ53hKNHs4j" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>