name = "Bob"
greeting = f"Hello, {name}"

print(greeting)


#Using with .format

name = "Bob"
greeting = "Hello, {}"

with_name = greeting.format(name)

print(with_name)

#Longer phrase 

longer_phrase = "Hello, {}. Today is {}."
formatted = longer_phrase. format("Rolf", "Monday")
print(formatted)