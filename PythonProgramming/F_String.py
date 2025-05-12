# Let's play with some cool f-string tricks!

# Simple variable for testing
var: int = 10

# Function to add two numbers, we'll use it with f-strings
def add(a: int, b: int) -> int:
    return a + b

# Debugging trick with f-strings - shows variable name and value
print(f"{var=}")  # Prints "var=10"
print(f"{add(5, 10)=}")  # Prints the function call and result, like "add(5, 10)=15"
print(f"{add(5, 10) = }")  # Adding spaces for readability, still works!

# Number formatting with f-strings
big_number: float = 12345678.9
print(f"{big_number:,}")  # Adds commas as thousand separators
print(f"{big_number:_}")  # Uses underscores as thousand separators

fraction: float = 1234.5678
print(f"{fraction:.2f}")  # Rounds to 2 decimal places
print(f"{fraction:,.2f}")  # Combines comma separator and 2 decimal places

percent: float = 0.5555
print(f"{percent:.2%}")  # Converts to percentage with 2 decimal places
print(f"{percent:.0%}")  # Rounds to whole number percentage
print(f"{5555.5555:,.3%}")  # Combines comma and percentage formatting

# Text alignment with f-strings
name: str = "BOB"
print(f"{name:10} Hello")  # Left-aligned, occupies 10 spaces
print(f"{name:>10} Hello")  # Right-aligned, occupies 10 spaces
print(f"{name:<10} Hello")  # Explicitly left-aligned
print(f"{name:^10} Hello")  # Centered, occupies 10 spaces

# Filling empty spaces with symbols
print(f"{name:*>10}")  # Right-aligned, fills with asterisks
print(f"{name:*<10}")  # Left-aligned, fills with asterisks
print(f"{name:*^10}")  # Centered, fills with asterisks
print(f"{name:#>10}")  # Right-aligned, fills with hashes
print(f"{name:+^10}")  # Centered, fills with plus signs

# Aligning numbers in a loop
numbers = [1, 100, 1010, 10000]
for number in numbers:
    print(f"{number:_>5} counting")  # Right-aligned numbers in 5 spaces

# Handling file paths with raw strings and f-strings
path: str = "\\users\\myusername\\documents\\"
print(path)  # Escaped backslashes cause issues
path = "\\\\users\\\\myusername\\\\documents\\\\"
print(path)  # Escaping each backslash manually works

# Using raw strings to avoid escaping
path = r"\users\myusername\documents"  # Raw string, no escaping needed
print(path)

# Combining raw strings with f-strings (aka "French strings"!)
user: str = "myname"
fr_path = fr"\users\{user}\documents"  # Raw f-string combo
print(fr_path)
rf_path = rf"\users\{user}\documents"  # Order doesn't matter
print(rf_path)