class BankAccount {
  String accountNumber;
  String ownerName;
  double balance;

  BankAccount(this.accountNumber, this.ownerName, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Deposited: $amount');
  }

  void withdraw(double amount) {
    if (amount > balance) {
      print('Insufficient balance');
    } else {
      balance -= amount;
      print('Withdrawn: $amount');
    }
  }

  void displayBalance() {
    print('Account: $accountNumber');
    print('Owner: $ownerName');
    print('Current balance: $balance');
  }
}

void main() {
  BankAccount account = BankAccount('12345', 'Ahmed', 1000);

  account.displayBalance();
  account.deposit(500);
  account.withdraw(300);
  account.withdraw(2000);
  account.displayBalance();
}
