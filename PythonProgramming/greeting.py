from typing import Final

AUTHOR: Final[str] = 'Federico'
VERSION: Final[int] = 1

def greet (name: str) -> None:
    print (f'Hello, {name}! ')

#This is our own module that we can call in other python files
#We start the new file with 'import greeting'

# or 'from greetings import *' to import everything from the module
#This way can be quite dangerous since it interferes with other imports

#'if _name__ == '__main__':' protects us from using imports and functionalities we're not supposed to

