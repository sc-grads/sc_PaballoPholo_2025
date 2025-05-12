

# Creating a lambda and assigning it to a variable
p = lambda x: print(x)
p(10)  # Calls the lambda with 10
p("hello")  # Calls it with "hello"

# Lambda with multiple parameters
add = lambda a, b: a + b
print(add(5, 11))  # Outputs 16

# Importing Callable to type-hint a function parameter
from typing import Callable

# Function that applies a callable to a list of values
def use_all(func: Callable[[int], None], values: list[int]) -> None:
    for value in values:
        func(value)

# Using a lambda with use_all
use_all(lambda value: print(f"{value}x"), [2, 4, 10])  # Multiplies each value by x and prints

# Equivalent regular function for comparison
def multiply_x(value: int) -> None:
    print(f"{value}x")

use_all(multiply_x, [2, 4, 10])  # Same output using the function

# Sorting a list of names using a lambda
names: list[str] = ["Bob", "James", "Samantha", "Luigi", "Joe"]
sorted_names: list[str] = sorted(names, key=lambda x: len(x))
print(sorted_names)  # Sorts by length: ['Bob', 'Joe', 'Luigi', 'James', 'Samantha']

# Sorting with case-insensitive length using lambda
sorted_names = sorted(names, key=lambda x: len(x.lower()))
print(sorted_names)  # Still sorts by length, ignoring case