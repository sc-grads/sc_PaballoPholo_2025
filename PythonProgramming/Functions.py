import time


def greet():
    print('Hello!')

    greet() #We just call a function and what's in the function will be our output

#Another example

from datetime import  datetime

def show_time():
    now: datetime = datetime.now()
    print(f'Time:{now:%H:%M:%S}') #This will format the time by Hours,Minutes and seconds

show_time()
time.sleep(2) #Let it sleep for 2 seconds
show_time()# This will now grab a time when the computer wakes

