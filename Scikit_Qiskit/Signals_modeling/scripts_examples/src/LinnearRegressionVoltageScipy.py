import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import linregress

# Simulated data (Voltage in mV, Resonance frequency in GHz)
data = np.array([
    [100, 4.5],
    [200, 4.8],
    [300, 5.1],
    [400, 5.4],
    [500, 5.7],
])

# Separate the features (Voltage) and the target (Frequency)
X = data[:, 0]  # Voltage
y = data[:, 1]  # Frequency

# Perform linear regression using SciPy
slope, intercept, r_value, p_value, std_err = linregress(X, y)

# Make a prediction for a new voltage value
new_voltage = 350  # Example: voltage of 350 mV
predicted_frequency = slope * new_voltage + intercept

# Print the predicted frequency for the new voltage
print(f"Predicted resonance frequency at {new_voltage} mV: {predicted_frequency:.2f} GHz")

# Plot the data and the regression line
plt.scatter(X, y, color='blue', label='Data Points')  # Original data points
plt.plot(X, slope * X + intercept, color='red', label='Regression Line')  # Fitted line
plt.scatter(new_voltage, predicted_frequency, color='green', label=f'Prediction ({new_voltage} mV)')  # Prediction point
plt.xlabel('Voltage (mV)')
plt.ylabel('Resonance Frequency (GHz)')
plt.title('Voltage vs. Resonance Frequency of Transmon Qubit')
plt.legend()
plt.grid(True)
plt.show()
