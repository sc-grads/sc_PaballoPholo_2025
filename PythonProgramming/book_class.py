# Creating a Book class to represent books with a title and number of pages
class Book:
    # This is the initializer dunder method, it sets up a new book with a title and page count
    def __init__(self, title: str, pages: int) -> None:
        self.title = title
        self.pages = pages

    # The __len__ dunder method lets us use len() on a book to get its page count
    def __len__(self) -> int:
        return self.pages

    # The __add__ dunder method defines how to add two books together using the + operator
    def __add__(self, other: 'Book') -> 'Book':
        # Combining the titles and pages of the two books
        combined_title = f"{self.title} and {other.title}"
        combined_pages = self.pages + other.pages
        # Returning a new Book object with the combined title and pages
        return Book(combined_title, combined_pages)

# This is the main section where we test our Book class
if __name__ == "__main__":
    # Creating two book objects with different titles and page counts
    pi_daily = Book("Pi Daily", 100)
    harry_potter = Book("Harry Potter", 340)

    # Using the len() function to get the page counts, thanks to __len__
    print(len(pi_daily))
    print(len(harry_potter))

    # Adding the two books together using the + operator, which uses __add__
    combined_books = pi_daily + harry_potter
    # Printing the combined book's title and pages
    print(combined_books.title)
    print(combined_books.pages)