import 'dart:io';

void main() {
  stdout.write('Enter the number of electricity units: ');
  double units = double.parse(stdin.readLineSync()!);

  double pricePerUnit;

  if (units > 300) {
    pricePerUnit = 2.5;
  } else if (units > 150) {
    pricePerUnit = 2.0;
  } else {
    pricePerUnit = 1.5;
  }

  double totalBill = units * pricePerUnit;

  print('\n--- Electricity Bill ---');
  print('Units consumed: $units');
  print('Price per unit: $pricePerUnit');
  print('Total bill: $totalBill');
}
