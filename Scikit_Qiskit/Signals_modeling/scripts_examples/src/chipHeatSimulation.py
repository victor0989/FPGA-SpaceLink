import numpy as np
from scipy.integrate import solve_ivp

# Parámetros del chip
k = 0.5  # Conductividad térmica (W/m·K)
rho = 8000  # Densidad del material (kg/m³)
c_p = 500  # Capacidad calorífica (J/kg·K)
P = 50  # Potencia disipada en el chip (W)
A = 0.01  # Área del chip (m²)
h = 0.01  # Espesor del chip (m)

# Ecuación del calor simplificada
def heat_dynamics(t, T, k, rho, c_p, P, A, h):
    dT_dt = P / (rho * c_p * A * h) - k * T
    return dT_dt

# Condiciones iniciales
T0 = [300]  # Temperatura inicial (K)

# Resolver la dinámica
t_span = (0, 10)  # Simulación de 10 segundos
sol = solve_ivp(heat_dynamics, t_span, T0, args=(k, rho, c_p, P, A, h), t_eval=np.linspace(0, 10, 100))

# Graficar
import matplotlib.pyplot as plt
plt.plot(sol.t, sol.y[0])
plt.xlabel('Tiempo (s)')
plt.ylabel('Temperatura (K)')
plt.title('Dinámica térmica del chip')
plt.show()
