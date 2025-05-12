# Creating a User class to demonstrate docstrings
class User:
    """
    This is the base class for creating users.
    """
    def __init__(self, user_id: int) -> None:
        self.user_id = user_id

    def show_id(self) -> None:
        """
        Prints the user ID.
        """
        print(self.user_id)

# Defining a function to check if a user exists in a database, with a detailed docstring
def user_exists(user: User, database: set[User]) -> bool:
    """
    Checks if a user is inside a database.

    :param user: The user to check for.
    :param database: The database to check inside.
    :return: A boolean indicating if the user is in the database.
    """
    return user in database

# Main section to test our class and function with docstrings
if __name__ == "__main__":
    # Creating two user objects with different IDs
    bob = User(0)
    anna = User(1)

    # Creating a database (set) with our users
    database: set[User] = {bob, anna}

    # Checking if Bob exists in the database using our function
    if user_exists(bob, database):
        print("User exists in the database")
    else:
        print("No user was found")

    # Accessing docstrings using __doc__ to see the documentation
    print(User.__doc__)
    print(user_exists.__doc__)