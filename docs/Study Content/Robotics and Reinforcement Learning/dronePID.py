import drone_2d_custom_gym_env
import gym

# define the time step
dt = 0.025
# PID control parameters
kp = 0.1
ki = 0.00
kd = 0.01
# PID control variables
integral_error = 0
previous_error = 0
rollsetpoint = 0

env = gym.make('drone-2d-custom-v0', render_sim=True, render_path=True, render_shade=True,
               shade_distance=70, n_steps=500, n_fall_steps=0, change_target=True,
               initial_throw=False)

# Reset the environment and get the initial state
state = env.reset()

# Run the simulation for 1000 steps
for _ in range(1000):
    # Render the environment
    env.render()
    
    # Take a random action
    action = env.action_space.sample()
    
    # Execute the action and get the next state, reward, and whether the episode is done
    state, reward, done, _ = env.step(action)
    
    # If the episode is done, reset the environment
    if done:
        state = env.reset()