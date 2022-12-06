# Setting up a remote Jupyter notebook

## ClearML Session

### Install ClearML Session

```bash
pip install clearml-session
```

### Initialize ClearML Session

```bash
clearml-init
```
Copy in these credentials when requested:

```
api { 
    web_server: http://31.204.128.128:8080
    api_server: http://31.204.128.128:8008
    files_server: http://31.204.128.128:8081
    # Students
    credentials {
        "access_key" = "NWC2N63JWUKZKPYZS3ZK"
        "secret_key"  = "YAlwjdwVbJ8papzDgZQdtrC6yNG04pKMghrWFxwf6qhBR12kj9"
    }
}
```

Leave all other settings as default

### Run a remote session

```bash
clearml-session --docker deanis/robosuite:py3.8-2 --queue default --packages "pyvirtualdisplay" "pygame" "box2d" "gym" "matplotlib"
```

- Say yes to everything

- Copy the Jupyter url into a browser

### Install xvfb

Open a new terminal and run:

```bash
apt install xvfb
```

### Run the code

Open a Jupiter notebook and run the code in the first cell:

```python
import gym
from pyvirtualdisplay import Display
import matplotlib.pyplot as plt
import robosuite as suite
import numpy as np
import time

display = Display(visible=0, size=(1400, 900))
display.start()
is_ipython = 'inline' in plt.get_backend()
if is_ipython:
    from IPython import display
plt.ion()
```

In the second cell:

- For the pendulum:

```python
env = gym.make('Pendulum-v1', g=2, render_mode='rgb_array')
obs = env.reset()[0]

#run this only once to start the render
img = plt.imshow(env.render())
for t in range(100):
    
    ### code for rendering in notebook ###
    img.set_data(env.render()) # just update the data
    plt.axis('off')
    display.display(plt.gcf())
    display.clear_output(wait=True)
    ### code for rendering in notebook ###
    
    action = 0
    obs, reward, done, info, _ = env.step([action])

    if done:
        obs = env.reset()
```

- For RoboSuite:

```python
env = suite.make(env_name= 'Lift',
                    robots="Panda",
                    has_renderer=False,
                    has_offscreen_renderer=True,                          
                    use_object_obs=True,
                    use_camera_obs=True,)

state = env.reset()

#run this only once to start the render
img = plt.imshow(state['agentview_image'])
for j in range(100):
    action = np.random.randn(env.robots[0].dof)
    state, reward, done, _ = env.step(action)
    
    ### code for rendering in notebook ###
    img.set_data(np.flipud(state['agentview_image'])) # just update the data
    plt.axis('off')
    display.display(plt.gcf())
    display.clear_output(wait=True)
    ### code for rendering in notebook ###
    
    if done:
        env.reset()
        
env.close()
```


