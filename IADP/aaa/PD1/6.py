import numpy as np

matrix = [list(map(float, input().strip().split(',')))]
n = len(matrix[0])
for i in range(n-1): matrix.append(list(map(float, input().strip().split(','))))

matrix_a = np.array(matrix)

vector_b = np.array(list(map(float, input().strip().split(','))))

solution = np.linalg.solve(matrix_a, vector_b)

print("solution:")
print(solution)
