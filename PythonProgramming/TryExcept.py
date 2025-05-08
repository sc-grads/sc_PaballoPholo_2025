#We use them to navigate through the errors we might come across
#Errors concerning user inputs without crashing our program


try:
    result: float = 10 / 0 #This will give us an error because a division by zero is undefined
    print(result)
except Exception as e:
    print(f'Error: {e}') #Allows us to print the error instead and move on with the code without crashing the program


print('Done!')

#Another specific example

while True:
    try:
        user_input: str = input('Enter a number: ')
        print(f'10 / {user_input} = {10 / float(user_input)}')
    except ZeroDivisionError:
        print('You cannot divide by 0 ')


#Else and Finally (Keywords to use in try and except)

user_input: str = '10'

try:
    result: float = 1 / float(user_input)
    print(f'1 / {user_input} = {result}')
except ValueError :
    print(f'You cannot use: "{user_input}" as a value.')
except ZeroDivisionError:
    print('Don\'t be silly, you cannot divide by 0. ')
else: #Acts as a success blower, Only excuse when the try and excepts executes successfully
    print('Success! There were no exceptions encountered! ')
finally: #This executes regardless of what happens
    print('FINALLY: I am always executed!')