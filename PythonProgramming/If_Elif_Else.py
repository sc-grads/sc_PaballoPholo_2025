age: int = 30

if age >= 21:
    print('You may enter the club!')
else:
    print('You are not allowed in...')

# Weather conditions

weather: str = 'cloudy'

if weather == 'clear':
    print('It is a nice day!')
elif weather == 'cloudy':
    print('The weather could be better...')
elif weather == 'rainy':
    print('What an awful day!')
else:
    print('Unknown weather...')

# Another age conditions

age: int = 22

if age >= 21:
    print('You are an adult.')
elif age >= 18:
    print('You are a young adult.')
elif age > 12:
    print('You are a teenager.')
else:
    print('Unknown age.')

#Shorthand (if/else)

number: int = 10

result: str = 'Above 0' if number > 0 else '0 and below' #This one life replaces the 4 line code we could've had
print(result)

#Another example(Boolean)

condition: bool = False
var: str = 'True' if condition else 'False'
print(var)