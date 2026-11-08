import 'dart:io';

Map<String, int> countNumbers(List<int> numbers) {
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

  return {
    'positive': positive,
    'negative': negative,
    'zero': zero,
  };
}

void main() {
  List<int> numbers = [];

  stdout.write('Enter 6 integers separated by spaces: ');
  List<String> input = stdin.readLineSync()!.trim().split(RegExp(r'\s+'));

  while (input.length != 6) {
    stdout.write('Please enter exactly 6 integers: ');
    input = stdin.readLineSync()!.trim().split(RegExp(r'\s+'));
  }

  for (String value in input) {
    numbers.add(int.parse(value));
  }

  Map<String, int> result = countNumbers(numbers);

  print('Positive: ${result['positive']}');
  print('Negative: ${result['negative']}');
  print('Zero: ${result['zero']}');
}
