abstract class Payment {
  void pay(double amount);
}

class CashPayment implements Payment {
  @override
  void pay(double amount) {
    print('Paid $amount using cash.');
  }
}

class CreditCardPayment implements Payment {
  @override
  void pay(double amount) {
    print('Paid $amount using credit card.');
  }
}

class PayPalPayment implements Payment {
  @override
  void pay(double amount) {
    print('Paid $amount using PayPal.');
  }
}

void main() {
  Payment cash = CashPayment();
  Payment creditCard = CreditCardPayment();
  Payment payPal = PayPalPayment();

  cash.pay(100);
  creditCard.pay(250);
  payPal.pay(500);
}
