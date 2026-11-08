import 'dart:io';

void main() {
  const String correctPassword = '123456';
  int attempts = 0;
  bool isLoggedIn = false;

  while (attempts < 3 && !isLoggedIn) {
    stdout.write('Enter password: ');
    String password = stdin.readLineSync()!;
    attempts++;

    if (password == correctPassword) {
      print('Login successful');
      isLoggedIn = true;
    } else if (attempts < 3) {
      print('Incorrect password. Try again.');
    } else {
      print('Account locked');
    }
  }
}
