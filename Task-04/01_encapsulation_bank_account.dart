class BankAccount {
  double _balance;

  BankAccount(this._balance);

  void deposit(double amount) {
    if (amount <= 0) {
      print('Deposit amount must be greater than zero.');
    } else {
      _balance += amount;
      print('Deposit successful.');
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Withdrawal amount must be greater than zero.');
    } else if (amount > _balance) {
      print('Insufficient balance.');
    } else {
      _balance -= amount;
      print('Withdrawal successful.');
    }
  }

  double getBalance() {
    return _balance;
  }
}

void main() {
  BankAccount account = BankAccount(1000);

  account.deposit(500);
  account.withdraw(200);
  account.withdraw(2000);
  account.deposit(0);

  print('Current balance: ${account.getBalance()}');
}
