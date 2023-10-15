def fibonacci(n):
    # Initialize the first two terms of the series
    fib_series = [0, 1]

    # Generate the Fibonacci series up to n terms
    for i in range(2, n):
        next_term = fib_series[-1] + fib_series[-2]
        fib_series.append(next_term)

    return fib_series

# Number of terms in the Fibonacci series
num_terms = 10  # Change this value to generate a different number of terms

# Generate and print the Fibonacci series
print(f"Fibonacci series with {num_terms} terms:")
print(fibonacci(num_terms))
