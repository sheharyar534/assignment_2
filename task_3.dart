class Book {
  late String _title;
  late String _author;
  late String _publisher;
  late double _price;

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get author => _author;

  set author(String value) {
    _author = value;
  }

  String get publisher => _publisher;

  set publisher(String value) {
    _publisher = value;
  }

  double get price => _price;
  set price(double value) {
    _price = value;
  }

  double calculateDiscountedPrice(
      double originalPrice, double discountPercentage) {
    return originalPrice * (1 - (discountPercentage / 100));
  }
}

void main() {
  Book book = Book();
  book.title = 'programming';
  book.author = "jhone cena";
  book.publisher = "abc";
  book.price = 500.00;
  print("title:${book.title}");
  print("autor:${book.author}");
  print("publisher:${book.publisher}");
  print("price:${book.price}");
}
