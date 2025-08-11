# Strings

'This is a string'
"This is also a string"

#printing strings
print('This is a string')
print("This is also a string")

x = 'hello'
print(x)

#Format

num = 12
name = 'Sam'

print('My name is {} and I am {} years old'.format(name, num))
print(f'My name is {name} and I am {num} years old')

#Indexing
my_string = 'Hello World'
print(my_string[0])  # H
print(my_string[1])  # e 

print(my_string[0:5])  # Hello
print(my_string[6:])   # World

#Lists
my_list = [1, 2, 3, 4, 5]

#Adding to a list
my_list.append(6)
print(my_list)  # [1, 2, 3, 4, 5, 6]

#Removing from a list
my_list.remove(3)
print(my_list)  # [1, 2, 4, 5, 6]

#Replacing a value in a list
my_list[0] = 10
print(my_list)  # [10, 2, 4, 5, 6]

#Nested Lists
nested_list = [1, 2, [3, 4], 5]
print(nested_list[2])  # [3, 4]
#Accessing nested elements
print(nested_list[2][0])  # 3
print(nested_list[2][1])  # 4