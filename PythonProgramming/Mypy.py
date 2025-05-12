# We explore Mypy to catch type mistakes our editor might miss!

# A variable annotated as a string, but we'll mess with it later
var: str = 10  # Whoops, assigned an int - editor might catch this!

# A list annotated to hold strings only
items: list[str] = ["cup", "apple", True, [1, 2, 3]]  # Sneaky non-strings slipped in!

# A function with a default value that Mypy will flag as a type issue
def function(default: int = None) -> None:
    # Just a placeholder check, but Mypy cares about the type here
    if default is not None:
        print(default)

# Main section to test our types
if __name__ == "__main__":
    # Creating the variable and list for Mypy to check
    var = 10
    items = ["cup", "apple", True, [1, 2, 3]]

    # Calling the function to see the default behavior
    function()