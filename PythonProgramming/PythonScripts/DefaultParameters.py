def add(x, y=8):
    print(x + y)

add(5) #Output 13, 5 goes to x when y is already 8

#Using default parameters:

default_y = 3

def add(x, y=default_y):
    sum = x + y
    print(sum)

add(2)