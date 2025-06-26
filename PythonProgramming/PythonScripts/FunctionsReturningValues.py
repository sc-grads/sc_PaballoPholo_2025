def add(x, y):
    print(x + y)
add(5, 8)

result = add(5, 8)
print(result) #Functions return none by default


#We use the return to be able to call the function as a variable and get the results

def add(x, y):
    return x + y

add(5, 8)
result = add(5, 8) #This will now return 13 when printed because we return
print(result)