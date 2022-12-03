# Balancing an Inverted Pendulum

For tomorrows datalab you will be implementing a controller on a robot arm in the RoboSuite environment. As preparation for this we will first implement a controller for a simple inverted pendulum. This will give you a chance to practice implementing a controller in a simple environment before moving on to the more complex RoboSuite environment.

Control Challenges: <img src="Images/challenge.png" height="50" />

- Try to get the pendulum to swing upright and balance with gravity set to 9.8 m/s<sup>2</sup>. 
- Try to Implement integral clamping to prevent the integral windup problem. Does it make a difference to the performance of the controller in this case?

Coding Challenge: <img src="Images/challenge.png" height="50" />
- Create a PID class that can be used to control the inverted pendulum. The class should have a constructor that takes in the gains for the proportional, integral, and derivative terms. The class should also have a method that takes in the current state of the system and returns the control input. You can use the code below as a starting point.

```python
class PID:
    def __init__(self, ):


    def calc_ouput(self, ):

```

- Create a controller that uses the PID class to control the inverted pendulum. 

Start with setpoint 0 --> try P and PD control
Change setpoint to 90 --> try PI and PID control

Demonstrate windup issues with integral control

Challenge implement clamping to remove windup

Challenge solve environment with PID control with g = 9.81

use the pid library and compare your results
