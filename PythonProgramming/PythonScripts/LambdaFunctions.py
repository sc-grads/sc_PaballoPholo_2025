add = lambda x, y: x + y #The 'x+y' after the collon is the return for lambda without using the return function
print(add(5, 7)) #We called lambda 'add' that's why we can call it

#Another example

def double(x):
    return x * 2

sequence = [1, 3, 5, 9]

doubled = [double(x) for x in sequence]
doubled = map(double, sequence) #This return the same value as the one above

#Using the lambda function

sequence = [1, 3, 5, 9]
doubled = [(lambda x: x * 2)(x) for x in sequence]
doubled = list(map(lambda x: x * 2, sequence)) #Use a list to see results in the console, the map doesn't return a list