# allows us to get a value from a function and reuse it later

def get_length(text: str) -> int: #Using '->' is to specify what we want returned
    print(f'Getting the length of: "{text}"...')
    return len(text)

name: str = 'Mario'
length: int = get_length(name)
print(length)

