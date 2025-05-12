

# Function to describe a list of numbers using the walrus operator
def description(numbers: list[int]) -> dict:
    # Using walrus operator to assign and compute in one go
    details: dict = {
        "length": (n_length := len(numbers)),
        "sum": (n_sum := sum(numbers)),
        "mean": n_sum / n_length
    }
    return details

# Main section to test the walrus operator
if __name__ == "__main__":
    # Creating a list of numbers to work with
    numbers: list[int] = [1, 10, 5, 200, -4, 7]
    print(description(numbers))  # Prints a dictionary with length, sum, and mean

    # Simple example of walrus operator outside a function
    print(x := 1 > 0)  # Assigns and prints True in one step
    print(x)  # Shows the assigned value is still True

    # Using walrus with a dictionary to check for an item
    items: dict[int, str] = {1: "cup", 2: "chair"}
    if (item := items.get(3)) is None:  # Assigns None if key 3 isn't found
        print("No item found")
    else:
        print(f"You have the item: {item}")

    # Changing the key to an existing one to see it work
    if (item := items.get(1)) is None:
        print("No item found")
    else:
        print(f"You have the item: {item}")

    # Alternative without walrus (for comparison)
    item = items.get(1)  # Extra line to assign first
    if item is None:
        print("No item found")
    else:
        print(f"You have the item: {item}")