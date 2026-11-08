import 'dart:io';

void main() {
  List<double> prices = [];

  for (int i = 0; i < 5; i++) {
    stdout.write('Enter price of product ${i + 1}: ');
    double price = double.parse(stdin.readLineSync()!);
    prices.add(price);
  }

  double total = 0;

  for (double price in prices) {
    total += price;
  }

  double average = total / prices.length;

  print('\nTotal price: $total');
  print('Average price: $average');
}
