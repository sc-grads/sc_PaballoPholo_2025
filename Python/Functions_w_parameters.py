#Functions with parameters

def greet(lang):
    if lang == 'es':
        print('Hola')  #Note: You can use a return function instead of print
    elif lang == 'fr':
        print('Bonjour')
    else:
        print('Hello')
        
greet('es')

greet('fr')
