# Creating a Car class to explore name mangling
class Car:
    # Class attribute with name mangling, making it harder to access outside the class
    __year: int = 2000

    # Initializer with mangled attributes for brand and fuel type
    def __init__(self, brand: str, fuel_type: str) -> None:
        self.__brand = brand
        self.__fuel_type = fuel_type
        # Regular attribute without name mangling, which can cause issues later
        self.var: str = "red"

    def drive(self) -> None:
        print(f"Driving {self.__brand}")

    # A mangled method, harder to access directly outside the class
    def __getdescription(self) -> None:
        print(f"The {self.__brand} has the {self.__fuel_type}")

    def display_color(self) -> None:
        # Using the mangled brand and regular var attribute
        print(f"The {self.__brand} is {self.var.capitalize()}")

# Toyota class inherits from Car to show how name mangling prevents name clashes
class Toyota(Car):
    def __init__(self, fuel_type: str) -> None:
        # Calling the parent class initializer with a fixed brand
        super().__init__("Toyota", fuel_type)
        # This var accidentally overrides the parent's var, but name mangling fixes it
        self.var = 100

# Main section to test our classes and name mangling
if __name__ == "__main__":
    # Creating a Car object to test basic functionality
    car = Car("Toyota", "electric")
    car.drive()

    # Accessing mangled method and attribute using the mangled name
    car._Car__getdescription()
    print(car._Car__brand)

    # Creating a Toyota object to test inheritance and name mangling
    toyota = Toyota("electric")
    toyota.display_color()