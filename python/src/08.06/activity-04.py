class Book:
    def __init__(self, title, author):
        self.title = title
        self.author = author


class BookstoreBook(Book):
    def __init__(self, title, author, price):
        super().__init__(title, author)
        self.price = price


class LibraryBook(Book):
    def __init__(self, title, author, is_lent):
        super().__init__(title, author)
        self.is_lent = is_lent


if __name__ == "__main__":
    bookstore_book = BookstoreBook("The Great Gatsby", "F. Scott Fitzgerald", 15.99)
    print(
        f"Bookstore Book: {bookstore_book.title} by {bookstore_book.author}, Price: ${bookstore_book.price}"
    )

    library_book = LibraryBook("To Kill a Mockingbird", "Harper Lee", False)
    print(
        f"Library Book: {library_book.title} by {library_book.author}, Is Lent: {library_book.is_lent}"
    )
