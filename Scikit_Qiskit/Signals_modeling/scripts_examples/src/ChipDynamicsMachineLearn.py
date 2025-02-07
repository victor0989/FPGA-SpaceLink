from sklearn.linear_model import LinearRegression
import numpy as np
import matplotlib.pyplot as plt

# Simulated data (frequency, voltage, temperature)
data = np.array([
    [1e9, 1.0, 320],  # Frequency in Hz, Voltage in V, Temperature in K
    [2e9, 1.2, 340],
    [3e9, 1.5, 370],
])

X = data[:, :2]  # Features: frequency and voltage
y = data[:, 2]   # Target: temperature

# Train the linear regression model
model = LinearRegression()
model.fit(X, y)

# Make a prediction for a specific frequency and voltage
freq, voltage = 2.5e9, 1.3
temp_pred = model.predict([[freq, voltage]])

# Print the predicted temperature
print(f"Predicted temperature: {temp_pred[0]:.2f} K")

# Visualization
# Scatter plot of the original data points
plt.scatter(data[:, 0], y, color='blue', label='Original data')

# Adding the prediction point
plt.scatter(freq, temp_pred, color='red', label='Prediction', marker='x', s=100)

# Labels and title
plt.xlabel('Frequency (Hz)')
plt.ylabel('Temperature (K)')
plt.title('Temperature Prediction based on Frequency and Voltage')
plt.legend()
plt.grid()

# Show the plot
plt.show()

