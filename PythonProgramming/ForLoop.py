text: str = 'Hello, world!'

for i in range(3):  # For this condition, text will be printed 3 times
    print(f'{i}: {text}')  # Then we also print 1(To number our texts)

# Lists

people: list[str] = ['Bob', 'James', 'Maria']
for person in people:
    print(person)

# Using if else in For loops

people: list[str] = ['Bob', 'James', 'Maria']

for person in people:
    if len(person) > 4:
        print(f' {person} has a long name')
    else:
        print(f' {person}')

