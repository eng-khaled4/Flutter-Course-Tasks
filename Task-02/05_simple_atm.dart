import 'dart:io';

void main() {
  double balance = 5000;
  int choice = 0;

  while (choice != 4) {
    print('\n--- Simple ATM ---');
    print('1 - Check balance');
    print('2 - Deposit money');
    print('3 - Withdraw money');
    print('4 - Exit');
    stdout.write('Choose an operation: ');

    choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print('Current balance: $balance');
        break;

      case 2:
        stdout.write('Enter deposit amount: ');
        double amount = double.parse(stdin.readLineSync()!);
        balance += amount;
        print('Deposit successful. New balance: $balance');
        break;

      case 3:
        stdout.write('Enter withdrawal amount: ');
        double amount = double.parse(stdin.readLineSync()!);

        if (amount > balance) {
          print('Insufficient balance');
        } else {
          balance -= amount;
          print('Withdrawal successful. New balance: $balance');
        }
        break;

      case 4:
        print('Thank you for using the ATM.');
        break;

      default:
        print('Invalid choice. Please choose from 1 to 4.');
    }
  }
}
