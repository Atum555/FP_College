import numpy as np

filename = input("Filename:")

matrix = np.loadtxt(filename, delimiter=';')

max_value = np.max(matrix)
min_value = np.min(matrix)

max_position = np.unravel_index(np.argmax(matrix), matrix.shape)
min_position = np.unravel_index(np.argmin(matrix), matrix.shape)

print(f"Max: {max_value}, ({max_position[0]},{max_position[1]})")
print(f"Min: {min_value}, ({min_position[0]},{min_position[1]})")
