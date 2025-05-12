# Importing system to exit the program cleanly
import sys

# Creating a Notepad class to manage notes
class Notepad:
    def __init__(self, author: str, file_name: str) -> None:
        # Storing the author and a private file name for notes
        self.author = author
        self._file_name = file_name

    def show_instructions(self) -> None:
        # Displaying a welcome message and command options for the user
        print(f"Welcome to Notepad, {self.author}!")
        print("Commands:")
        print("1. Write a note")
        print("2. Display a note")
        print("0. Exit Notepad")

    def write_note(self) -> None:
        # Getting a note from the user and saving it to the file
        user_input: str = input("Enter a note: ")
        with open(self._file_name, "w") as note:
            note.write(user_input)
        print("Bot says: Note successfully created")

    def display_note(self) -> None:
        # Trying to read and display the note, with error handling
        try:
            with open(self._file_name, "r") as note:
                text: str = note.read()
                print(f"Bot says: {text}")
        except FileNotFoundError:
            print("Bot says: You need to write a note first")

    def exit_notepad(self) -> None:
        # Exiting the program with a friendly goodbye
        print(f"See you next time, {self.author}!")
        sys.exit()

    def run(self) -> None:
        # Main method to run the notepad with a loop for user commands
        self.show_instructions()
        while True:
            user_input: str = input(f"{self.author}: ")
            if user_input not in ("0", "1", "2"):
                print("Bot says: Please enter a valid choice")
                continue
            elif user_input == "1":
                self.write_note()
            elif user_input == "2":
                self.display_note()
            elif user_input == "0":
                self.exit_notepad()
            else:
                print(f"Bot says: Unknown command: {user_input}")

# Main entry point to start the notepad
if __name__ == "__main__":
    notepad = Notepad("Bob", "notes.txt")
    notepad.run()