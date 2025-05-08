#One of the challenges of using user input is your users entering invalid characters

import sys

total: int = 0
while True:
    user_input: str = input('Enter a number:')
    if user_input == '0':
        print('Total: ', total)
    sys.exit()

    total += int(user_input)

#For this example, we only allow integers as input
#But a user can enter a string or a float, This will give system errors