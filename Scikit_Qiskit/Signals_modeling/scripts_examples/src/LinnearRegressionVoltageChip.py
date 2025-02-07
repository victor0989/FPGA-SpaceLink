import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression

# Simulated data (Voltage in mV, Resonance frequency in GHz)
data = np.array([
    [100, 4.5],
    [200, 4.8],
    [300, 5.1],
    [400, 5.4],
    [500, 5.7],
])

# Separating the features (Voltage) and the target (Frequency)
X = data[:, 0].reshape(-1, 1)  # Voltage
y = data[:, 1]  # Frequency

# Create and train the linear regression model
model = LinearRegression()
model.fit(X, y)

# Make a prediction for a new voltage value
new_voltage = np.array([[350]])  # Example: voltage of 350 mV
predicted_frequency = model.predict(new_voltage)

# Print the predicted frequency for the new voltage
print(f"Predicted resonance frequency at {new_voltage[0][0]} mV: {predicted_frequency[0]:.2f} GHz")

# Plot the data and the regression line
plt.scatter(X, y, color='blue', label='Data Points')  # Original data points
plt.plot(X, model.predict(X), color='red', label='Regression Line')  # Fitted line
plt.xlabel('Voltage (mV)')
plt.ylabel('Resonance Frequency (GHz)')
plt.title('Voltage vs. Resonance Frequency of Transmon Qubit')
plt.legend()
plt.grid(True)
plt.show()
