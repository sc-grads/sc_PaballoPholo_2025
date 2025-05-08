# Parameters are used inside a function so that everytime the function is called
# we are required to insert a parameter

def greet(name: str):  # When you define it - Parameter
    print(f'Hello {name}!')


greet('Mario')
greet('James')  # When you use it - Argument


# You can also use multiple parameters in a function

def greet(name: str, language: str, default: str):

    if language == 'it':
        print(f'Ciao, {name} ! ')
    else:
        print(f' {default}, ')

greet('Mario','it','Hello') #Aurguments must be in an order of parameters
