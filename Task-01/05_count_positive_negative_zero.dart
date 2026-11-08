import 'dart:io';

void main() {
  List<int> numbers = [];

  for (int i = 0; i < 6; i++) {
    stdout.write('Enter integer ${i + 1}: ');
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  int positive = 0;
  int negative = 0;
  int zero = 0;

  for (int number in numbers) {
    if (number > 0) {
      positive++;
    } else if (number < 0) {
      negative++;
    } else {
      zero++;
    }
  }

  print('Positive numbers: $positive');
  print('Negative numbers: $negative');
  print('Zeros: $zero');
}
