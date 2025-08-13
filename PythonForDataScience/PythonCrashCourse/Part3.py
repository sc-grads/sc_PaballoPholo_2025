#LOOPS

#for loop
seq = [1, 2, 3, 4, 5]
for item in seq:
    print(item)
# Output: 1 2 3 4 5

#while loop
i = 1
while i < 6:
    print(i)
    i += 1
# Output: 1 2 3 4 5

#Range
for i in range(1, 6):
    print(i)
# Output: 1 2 3 4 5

#List Comprehensions
squared = [x**2 for x in range(1, 6)]
print(squared)  # Output: [1, 4, 9, 16, 25]

#Functions
def my_function(param1, param2):
    """This function takes two parameters and returns their sum."""
    return param1 + param2

result = my_function(5, 10)
print(result)  # Output: 15 