from drone_2d import drone_2d
import gym
import numpy as np
import time

# define the time step
dt = 0.025
# Create the environment
env = drone_2d(dt=dt)
# Reset the environment and get the initial state
state = env.reset()

# PID control parameters
kp = 4#2#1# 5
ki = 0.15#0.15#0.1
kd = 3#3
# PID control variables
integral_error = 0
previous_error = 0
heightsetpoint = 0.5

# loop through the simulation
for step in range(500):
    ## Determine the action using PID control
    #get the current height
    height = state[7]
    #calculate the error
    error = heightsetpoint - height
    #calculate the integral error by adding the error to the integral (past) error
    integral_error += error
    #calculate the derivative error calculating the error change over time (gradient)
    derivative_error = (error - previous_error)/dt
    #update the previous error
    previous_error = error
    #calculate the action by multiplying the errors by the PID gains and summing them
    action = np.clip(error * kp + integral_error * ki + derivative_error * kd, -5, 5)
    print(action)

    # Execute the action and get the next state, reward, and whether the episode is done
    state, reward, done, _ = env.step(action)

    #render the environment
    env.render()
    # add a delay to slow down the env render
    time.sleep(dt)
    if done:
        state = env.reset()