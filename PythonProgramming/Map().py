# Starting with a list of numbers to work with
numbers: list[int] = [1, 2, 3, 4, 5]

# Defining a function to double a number, which we'll use with map
def double(number: int) -> int:
    return number * 2

# Using map to apply the double function to each number in the list
doubled: map = map(double, numbers)
print(doubled)  # This will show the map object
print(list(doubled))  # Converting the map object to a list to see the results

# Now using a lambda instead of a defined function to do the same thing
doubled = map(lambda n: n * 2, numbers)
print(list(doubled))

# Using a list comprehension as a modern alternative to map
doubled: list[int] = [n * 2 for n in numbers]
print(doubled)

# Working with two lists to show how map can handle multiple iterables
letters: list[str] = ['a', 'b', 'c']
# Mapping a function that combines elements from both lists into tuples
combined: map = map(lambda number, letter: (number, letter), numbers, letters)
print(list(combined))  # Will stop at the shortest list (letters)