#%%
import drone_2d_custom_gym_env
import gym
import numpy as np
import time

#%%

# define the time step
dt = 0.05
# PID control parameters
kp = 6
ki = 0.01
kd = 3
# PID control variables
integral_error = 0
previous_error = 0
rollsetpoint = 0

# PID control parameters for height
kp_h = 3
ki_h = 0.05
kd_h = 10
# PID control variables for height
integral_error_h = 0
previous_error_h = 0
heightsetpoint = 0.5
action_mod_height = np.array([0,0])

env = gym.make('drone-2d-custom-v0', render_sim=True, render_path=True, render_shade=True,
               shade_distance=70, n_steps=500, n_fall_steps=0, change_target=True,
               initial_throw=False)

# Reset the environment and get the initial state
state = env.reset()

# PID control parameters for pos
kp_p = 1.2
ki_p = 0.1
kd_p = 0.6
# PID control variables for pos
integral_error_p = 0
previous_error_p = 0
possetpoint = state[6]

heightsetpoint = state[7]

# Run the simulation for 500 steps
for step in range(500):
    # Render the environment
    env.render()
    
    action_base = np.array([0,0])

    pos = state[6]
    error_p = possetpoint - pos
    integral_error += error_p
    derivative_error_p = (error_p - previous_error_p)/dt
    previous_error_p = error_p
    rollsetpoint = -np.clip(error_p * kp_p + integral_error_p * ki_p + derivative_error_p * kd_p, -0.35, 0.35)

    angle = state[3]
    error = rollsetpoint - angle
    integral_error += error
    derivative_error = (error - previous_error)/dt
    previous_error = error
    action_mod_roll = (error * kp + integral_error * ki + derivative_error * kd)
    
    height = state[7]
    error_h = heightsetpoint - height
    if step == 20:
        heightsetpoint = 0.5
    integral_error_h += error_h
    derivative_error_h = (error_h - previous_error_h)/dt
    previous_error_h = error_h
    action_mod_height = (error_h * kp_h + integral_error_h * ki_h + derivative_error_h * kd_h)

    action = np.array([action_base[0] - action_mod_roll, action_base[1] + action_mod_roll])
    action = action + action_mod_height

    print('height: ', height, '  error_h: ', error_h, '  action_mod_height: ', action_mod_height, '  action: ', action)
    # Execute the action and get the next state, reward, and whether the episode is done
    state, reward, done, _ = env.step(action)

    # add a delay to slow down the env render
    time.sleep(dt)
    
    # If the episode is done, reset the environment
    if done:
        state = env.reset()
