# Let's explore the callable function to see what objects we can call with parentheses
def function() -> None:
    print("function was called")

# Setting up some variables to test with callable
fruit = "apple"
number = 10

# Checking if different objects are callable
print(f"Callable(fruit): {callable(fruit)}")  # Testing if a string is callable
print(f"Callable(number): {callable(number)}")  # Testing if an integer is callable
print(f"Callable(function): {callable(function)}")  # Testing if our function is callable
print(f"Callable(range): {callable(range)}")  # Testing if the range built-in is callable
print(f"Callable(str): {callable(str)}")  # Testing if the string built-in is callable

# Using callable for a practical check before calling
obj = function
if callable(obj):
    obj()  # Safely call the function if it's callable
else:
    print("The object is not callable")

obj = fruit
if callable(obj):
    obj()  # This won't run due to the else block
else:
    print("The object is not callable")