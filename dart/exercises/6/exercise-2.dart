void main() {
  BankAccount account = new BankAccount(0);

  print('Saldo inicial: R\$ ${account.balance.toStringAsFixed(2)}');

  bool depositSuccess = account.deposit(100);
  print('Depositar R\$ 100: $depositSuccess');
  print('Saldo após o depósito: R\$ ${account.balance.toStringAsFixed(2)}');

  bool withdrawSuccess = account.withdraw(30);
  print('Sacar R\$ 30: $withdrawSuccess');
  print('Saldo após o saque: R\$ ${account.balance.toStringAsFixed(2)}');

  bool withdrawFail = account.withdraw(100);
  print('Sacar R\$ 100: $withdrawFail');
  print('Saldo final: R\$ ${account.balance.toStringAsFixed(2)}');

  bool depositNegative = account.deposit(-50);
  print('Depositar -R\$ 50: $depositNegative');
}

class BankAccount {
  double balance;

  BankAccount(this.balance);

  bool deposit(double amount) {
    if (amount < 0) return false;

    this.balance += amount;

    return true;
  }

  bool withdraw(double amount) {
    if (amount < 0) return false;

    if (amount > this.balance) return false;

    this.balance -= amount;

    return true;
  }
}
