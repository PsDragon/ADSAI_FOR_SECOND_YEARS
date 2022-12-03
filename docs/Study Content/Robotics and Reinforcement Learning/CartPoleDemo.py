import gym
import time

env = gym.make('CartPole-v0')

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

    # add a delay to slow down the env render
    time.sleep(0.05)
    
    # If the episode is done, reset the environment
    if done:
        state = env.reset()