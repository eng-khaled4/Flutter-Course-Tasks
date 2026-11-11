class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotal() {
    return price * quantity;
  }
}

void main() {
  Product product1 = Product('Laptop', 25000, 2);
  Product product2 = Product('Mouse', 300, 5);
  Product product3 = Product('Keyboard', 800, 3);

  print('${product1.name} total: ${product1.calculateTotal()}');
  print('${product2.name} total: ${product2.calculateTotal()}');
  print('${product3.name} total: ${product3.calculateTotal()}');
}
