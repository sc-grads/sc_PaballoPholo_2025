from operator import truediv

i: int = 5

while i > 0:
    print(f'Hello: {i}')
    i -= 1

#Complex example

import time
connected: bool = True

while connected:
    print('Using internet...')
    time.sleep(5)
    connected = False


print('Connection ended...')

#Example that asks for user input

while True:
    user_input: str = input('You: ')

    if user_input == 'hello':
        print('Bot: Hey there!')
    else:
        print('Bot: Yes, that is interesting')