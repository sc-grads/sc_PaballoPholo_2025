# map()

seq = [1, 2, 3, 4, 5]
mapped = list(map(lambda x: x**2, seq))
print(mapped)  # Output: [1, 4, 9, 16, 25]

# filter()
filtered = list(filter(lambda x: x > 2, seq)) #returns elements greater than 2
print(filtered)  # Output: [3, 4, 5]

# Methods

s = 'Hello World'
#lower()
lowered = s.lower() # Output: 'hello world'

#upper()
uppered = s.upper() # Output: 'HELLO WORLD'

#split()
split_list = s.split()  # Output: ['Hello', 'World']
