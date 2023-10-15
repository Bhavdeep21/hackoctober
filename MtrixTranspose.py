def transpose_matrix(matrix):
    # Get the dimensions of the matrix
    rows = len(matrix)
    cols = len(matrix[0])

    # Create a new matrix with dimensions swapped
    transposed_matrix = [[0 for _ in range(rows)] for _ in range(cols)]

    # Fill the transposed matrix
    for i in range(rows):
        for j in range(cols):
            transposed_matrix[j][i] = matrix[i][j]

    return transposed_matrix

# Example usage
if __name__ == "__main__":
    matrix = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ]

    print("Original Matrix:")
    for row in matrix:
        print(row)

    transposed = transpose_matrix(matrix)

    print("\nTransposed Matrix:")
    for row in transposed:
        print(row)
