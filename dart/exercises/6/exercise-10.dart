void main() {
  Library library = Library();

  Book book1 = Book('O Senhor dos Anéis');
  Book book2 = Book('Dom Quixote');

  library.addBook(book1);
  library.addBook(book2);

  User user1 = User('Ana');
  User user2 = User('Bruno');

  Loan? loan1 = library.registryLoan(user1, book1);
  if (loan1 != null) {
    print('Empréstimo registrado: ${loan1.user.name} -> ${loan1.book.title}');
  } else {
    print('Falha ao registrar empréstimo para ${user1.name}');
  }

  bool available = library.verifyBookAvailability(book1);
  print('"${book1.title}" disponível? ${available ? 'Sim' : 'Não'}');

  Loan? loan2 = library.registryLoan(user2, book1);
  if (loan2 == null) {
    print('${user2.name} não pôde pegar "${book1.title}" emprestado');
  }

  bool removed = library.removeLoan(loan1!);
  print('Empréstimo removido? ${removed ? 'Sim' : 'Não'}');

  available = library.verifyBookAvailability(book1);
  print('"${book1.title}" disponível? ${available ? 'Sim' : 'Não'}');
}

class Library {
  List<Book> books = [];
  List<Loan> loans = [];

  void addBook(Book book) {
    books.add(book);
  }

  void removeBook(Book book) {
    books.remove(book);
  }

  Loan? registryLoan(User user, Book book) {
    if (!verifyBookAvailability(book)) return null;

    Loan loan = new Loan(user, book);

    loans.add(loan);

    return loan;
  }

  bool removeLoan(Loan loan) {
    return loans.remove(loan);
  }

  bool verifyBookAvailability(Book book) {
    return !loans.any((loan) => loan.book == book);
  }
}

class Book {
  String title;

  Book(this.title);
}

class User {
  String name;

  User(this.name);
}

class Loan {
  User user;
  Book book;

  Loan(this.user, this.book);
}
