numbers: list[int] = [1, 2, 3]

doubled_lc: list[int] = [number * 2 for number in numbers] #This instead of using a multi-line loop
print(doubled_lc)

#Another example: The first option

names: list[str] = ['Mario' , 'James' , 'Luigi' , 'John' ]
j_names: list[str] = []
for name in names:
    if name. startswith ( 'J') :
        j_names. append (name)

print(j_names)

#The 2nd option: Using list comprehension[Provided the same output]

j_names_lc: list[str] = [name for name in names if name. startswith ('J')]
print(j_names_lc)