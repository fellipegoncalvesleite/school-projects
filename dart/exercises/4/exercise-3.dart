import "dart:math";

void main() {
  List<double> salaries = generateSalaries(10);

  printSalaries(salaries);

  double meanSalary = mean(salaries);

  print("Média dos salários: R\$ ${meanSalary.toStringAsFixed(2)}");
}

List<double> generateSalaries(int amount) {
  List<double> salaries = [];

  for (int i = 0; i < amount; i++) {
    double salary = 1800 + (Random().nextDouble() * 10000);

    salaries.add(salary);
  }

  return salaries;
}

void printSalaries(List<double> salaries) {
  print("Salários:");

  for (double salary in salaries) {
    print("R\$ ${salary.toStringAsFixed(2)}");
  }
}

double mean(List<double> values) {
  double total = 0;

  for (double value in values) {
    total += value;
  }

  double average = total / values.length;

  return average;
}
