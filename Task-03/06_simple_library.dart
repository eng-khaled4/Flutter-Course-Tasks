class Book {
  String title;
  String author;
  bool isBorrowed;

  Book(this.title, this.author, {this.isBorrowed = false});

  void borrowBook() {
    if (isBorrowed) {
      print('"$title" is already borrowed.');
    } else {
      isBorrowed = true;
      print('"$title" was borrowed successfully.');
    }
  }

  void returnBook() {
    if (!isBorrowed) {
      print('"$title" was not borrowed.');
    } else {
      isBorrowed = false;
      print('"$title" was returned successfully.');
    }
  }
}

void main() {
  Book book1 = Book('Dart Basics', 'Ali');
  Book book2 = Book('Flutter Guide', 'Sara');

  book1.borrowBook();
  book1.borrowBook();
  book1.returnBook();
  book1.returnBook();

  book2.returnBook();
  book2.borrowBook();
}
