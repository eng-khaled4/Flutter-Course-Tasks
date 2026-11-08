import 'dart:io';

void main() {
  List<int> numbers = [];

  for (int i = 0; i < 5; i++) {
    stdout.write('Enter integer ${i + 1}: ');
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  int sum = 0;

  for (int number in numbers) {
    sum += number;
  }

  print('Numbers: $numbers');
  print('Sum: $sum');
}
