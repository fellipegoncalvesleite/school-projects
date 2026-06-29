import matplotlib.pyplot as plt
import numpy as np

start_time = 0
end_time = 1

sample_rate = 200

frequency = 1
amplitude = 1

num_samples = np.round(sample_rate * (end_time - start_time))

time = np.zeros(num_samples)

sinewave = np.zeros(num_samples)

time_increment = 1 / sample_rate

for s in range(num_samples):
    time[s] = s * time_increment
    sinewave[s] = amplitude * np.sin(2 * np.pi * frequency * time[s])

plt.plot(time, sinewave, "*")
plt.show()
