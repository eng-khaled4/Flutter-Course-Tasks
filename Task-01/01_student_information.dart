import 'dart:io';

void main() {
  stdout.write('Enter your name: ');
  String name = stdin.readLineSync()!;

  stdout.write('Enter your age: ');
  int age = int.parse(stdin.readLineSync()!);

  stdout.write('Enter your university name: ');
  String university = stdin.readLineSync()!;

  print('\n--- Student Information ---');
  print('Name: $name');
  print('Age: $age');
  print('University: $university');
}
