import 'dart:io';

int findLargest(List<int> numbers) {
  int largest = numbers[0];

  for (int number in numbers) {
    if (number > largest) {
      largest = number;
    }
  }

  return largest;
}

void main() {
  List<int> numbers = [];

  for (int i = 0; i < 5; i++) {
    stdout.write('Enter integer ${i + 1}: ');
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }

  int result = findLargest(numbers);
  print('The largest number is: $result');
}
