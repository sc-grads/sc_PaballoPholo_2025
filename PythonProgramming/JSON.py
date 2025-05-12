# Importing the json module to work with JSON data
import json

# Path to the JSON file we want to read
file_path = "data.json"

# Reading JSON from a file and converting it to a Python dictionary
with open(file_path, "r") as file:
    data: dict = json.load(file)
print(data)  # Now it's a Python dict with None instead of null

# Reading JSON from a string instead of a file
my_json = '''
{
    "name": "Alice",
    "age": 25,
    "job": null
}
'''
data: dict = json.loads(my_json)  # loads = load string
print(data)  # Converts the JSON string to a Python dict

# Creating a Python dictionary to write as JSON
data: dict = {
    "name": "Bob",
    "age": 43,
    "job": None
}

# Writing the dictionary to a new JSON file
with open("new_json.json", "w") as file:
    json.dump(data, file)  # Converts None to null and writes to file

# Converting the dictionary to a JSON string
json_format: str = json.dumps(data)  # dumps = dump string
print(json_format)  # Looks like a dict but it's a string
print(type(json_format))  # Confirms it's a string