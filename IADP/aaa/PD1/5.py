import numpy as np

seed = int(input("Seed:"))
rows = int(input("Rows:"))
columns = int(input("Columns:"))

np.random.seed(seed)

matrix = np.random.normal(loc=0, scale=1, size=(rows, columns))

mean = np.mean(matrix)
std = np.std(matrix)

print(f"Mean: {mean:.2f}, Std: {std:.2f}")
