# radar-system
The aim of this project is to design a radar system to detect objects nearby.

Our team members include:
- Hammad Ali Baig
- Hamza Hussain
- Muhammad Bin Sanaullah

### Introduction
1. This project is an embedded system that is based on radar technology.
2. It resembles the functionality that traces and locates objects in a specified area, and pinpoints their location on a grid, map or screen. It works in three parts: the sensory input, the processing unit and the output.
3. An ultrasonic sensor is used for the sensory input, with a motor to help it broaden its range, the 8052 microcontroller is used to formulate the location of an object within range and works with the input and output to trace the object’s location on an LED matrix.

### Components Used
1. 8052 Microcontroller
2. HC-SR04 Ultrasonic Sensor
3. Decoder (FPGA/BASYS3)
4. Servo Motor
5. LCD Screen
6. Two 8x8 LED Matrices
7. Breadboard, Jumper cables

### Working
The ultrasonic sensor rotates on the motor and covers a span of 180 degrees of area to detect objects in it. The sensor and motor both work within controlled rotations and trigger/echo is set by the microcontroller. The LED matrices require 32 inputs but microcontroller does not have so many output pins, so I created a decoder on a FPGA (basys 3). The LCD was directly controlled by the microcontroller.

These are the schematics
![Schematics 1](/images/Schematic_1.png)
![Schematics 2](/images/Schematic_2.png)
![Schematics 3](/images/Schematic_3.png)

This is the LCD we used
![LCD image](/images/LCD.png)

The 8052 microcontroller
![8052 microcontroller](/images/microcontroller.png)

Here is an image of full working prototype
![full prototype](/images/prototype.png)
