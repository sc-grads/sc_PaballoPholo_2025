#Dictionaries

d = {'key1': 'value1', 'key2': 'value2', 'key3': 'value3'}
print(d['key1'])  # Output: value1

#A list as a key
d1 = {'k1': [1, 2, 3]}

#Tuples
t = (1, 2, 3)
print(t[0])  # Output: 1

#Tuples are immutable, we use them if we don't want the data to change

#Sets
s = {1, 2, 3, 4, 5} 
#allows only unique elements - that is no duplicates

s.add(6)  # Adding an element
print(s)  # Output: {1, 2, 3, 4, 5, 6}