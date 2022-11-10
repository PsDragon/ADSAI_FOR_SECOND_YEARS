import gym
import numpy as np
import time

# Create the environment, a continuous version of CartPole
env = gym.make('CartPole-v1')

#change action space from discrete to continuous
env.action_space = gym.spaces.Box(low=-1, high=1, shape=(1,), dtype=np.float32)

# PID control parameters
kp = 10
ki = 0.5
kd = 20

# PID control variables
integral_error = 0
previous_error = 0
set_point = 0

for i_episode in range(20):
    observation = env.reset()
    for t in range(100):
        env.render()
        print(observation)
        error = observation[2] - set_point
        integral_error += error
        derivative_error = error - previous_error
        previous_error = error
        action = 0 if error * kp + integral_error * ki + derivative_error * kd < 0 else 1
        observation, reward, done, info = env.step(action)
        # add a delay to slow down the env render
        time.sleep(0.05)
