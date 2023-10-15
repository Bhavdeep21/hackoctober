def print_star_pattern(rows):
    for i in range(1, rows + 1):
        print('*' * i)

# Number of rows for the star pattern
num_rows = 5  # Change this value to generate a different pattern

# Generate and print the star pattern
print(f"Star pattern with {num_rows} rows:")
print_star_pattern(num_rows)
