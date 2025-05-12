# Defining a class called Car - it's like a template for creating car objects
class Car:
    # This is the initializer method, it sets up each car with a brand and number of wheels
    def __init__(self, brand, wheels):
        self.brand = brand
        self.wheels = wheels

    def turn_on(self):
        print(f"Turning on the {self.brand}")

    def turn_off(self):
        print(f"Turning off the {self.brand}")

    # This method lets the car drive for a certain number of kilometers
    def drive(self, kilometers):
        print(f"Driving {self.brand} for {kilometers} kilometers")

    def describe(self):
        print(f"{self.brand} is a car with {self.wheels} wheels")

# This checks if we're running the script directly, then runs the code below
if __name__ == "__main__":
    # Creating two car objects using the Car class and testing their methods
    bmw = Car("BMW", 4)
    bmw.turn_on()
    bmw.drive(10)
    bmw.turn_off()
    bmw.describe()

    volvo = Car("Volvo", 6)
    volvo.turn_on()
    volvo.drive(30)
    volvo.turn_off()
    volvo.describe()