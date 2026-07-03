void main() {
  Worker worker = Worker('João', 3000.0);
  Manager manager = Manager('Maria', 5000.0);

  print('Funcionário: ${worker.name}');
  print('\tSalário base: R\$ ${worker.salary.toStringAsFixed(2)}');
  print('\tBônus: ${(worker.bonus * 100).toStringAsFixed(0)}%');
  print('\tSalário final: R\$ ${worker.calculateSalary().toStringAsFixed(2)}');

  print('Gerente: ${manager.name}');
  print('\tSalário base: R\$ ${manager.salary.toStringAsFixed(2)}');
  print('\tBônus: ${(manager.bonus * 100).toStringAsFixed(0)}%');
  print('\tSalário final: R\$ ${manager.calculateSalary().toStringAsFixed(2)}');
}

class Worker {
  String name;
  double salary;

  double get bonus => 0.0;

  Worker(this.name, this.salary);

  double calculateSalary() {
    return this.salary * (1 + this.bonus);
  }
}

class Manager extends Worker {
  Manager(String name, double salary) : super(name, salary);

  @override
  double get bonus => 0.2;
}
