import matplotlib.pyplot as plt
import numpy as np

# Create the time array for the signals, from 0 to 5 seconds with 0.01 seconds intervals
t = np.arange(0, 5, 0.01)

# Create the unit step signal, with a delay of 2 seconds
step = np.heaviside(t - 2, 1)

# Create the ramp signal, with a slope of 1 and a delay of 1 second
ramp = np.where(t < 1, 0, t/2 - 0.5)
ramp = ramp - np.where(t < 3, 0, t/2) + np.where(t < 3, 0, 1.5)

# Create the sinusoid signal, with frequency of 1 Hz and an initial phase of 90 degrees
sinusoid = np.sin(2 * np.pi * t - np.pi / 2)

# Plot the step signal in the first window
plt.figure()
plt.plot(t, step, color='#1f77b4', linewidth=2)
plt.ylabel('Step value', fontsize=12)
plt.title('Unit step signal', fontsize=14, fontweight='bold')
plt.grid(linestyle='--', linewidth=0.5)
plt.xlim(0, 5)
plt.xticks(fontsize=10)
plt.yticks(fontsize=10)

# Plot the ramp signal in the second window
plt.figure()
plt.plot(t, ramp, color='#ff7f0e', linewidth=2)
plt.ylabel('Ramp value', fontsize=12)
plt.title('Ramp signal', fontsize=14, fontweight='bold')
plt.grid(linestyle='--', linewidth=0.5)
plt.xlim(0, 5)
plt.xticks(fontsize=10)
plt.yticks(fontsize=10)

# Plot the sinusoid signal in the third window
plt.figure()
plt.plot(t, sinusoid, color='#2ca02c', linewidth=2)
plt.ylabel('Sinusoid value', fontsize=12)
plt.title('Sinusoid signal', fontsize=14, fontweight='bold')
plt.grid(linestyle='--', linewidth=0.5)
plt.xlim(0, 5)
plt.xticks(fontsize=10)
plt.yticks(fontsize=10)

# Show the plots
plt.show()
