# Args are arguments
# When we run the print with multiple arguments, the default is a space separate
# We can change that by specifying our args


def add(*args: int) -> int:
    print(args)
    return sum(args)

print(add(1, 2, 3)) #It absorbs all the values we parse in and convert them into a tuple

#Kwargs

def pin_position(**kwargs: int) -> None:
    print(kwargs)

pin_position(x=10, y=20) #It absorbs all the values we parse in and convert it into a dictionary

#using them both
#Nothing should come after 'kwargs' and 'kwargs' must always come after 'args' in arguments

def func(*args: str, **kwargs: int) -> None:
    print(args)
    print(kwargs)
func('a', 'b', a=1, b=2)
