void main() {
  final salary = 1500.0;
  final yearsOfService = 2;

  double salaryWithBonus = calculateSalaryWithBonus(salary, yearsOfService);

  print("Salário com bônus: R\$ ${salaryWithBonus.toStringAsFixed(2)}");
}

double calculateSalaryWithBonus(double salary, int yearsOfService) {
  if (yearsOfService > 3) {
    final bonus = 0.1;

    double salaryWithBonus = salary + (salary * bonus);

    return salaryWithBonus;
  } else if (yearsOfService >= 1) {
    final bonus = 0.05;

    double salaryWithBonus = salary + (salary * bonus);

    return salaryWithBonus;
  } else {
    final bonus = 0.0;

    double salaryWithBonus = salary + (salary * bonus);

    return salaryWithBonus;
  }
}
