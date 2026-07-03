void main() {
  final n1 = 8;
  final n2 = 3;

  calculate(n1, n2, divide);
}

void calculate(int n1, int n2, Function(int, int) operation) {
  double result = operation(n1, n2);

  print("Resultado: $result");
}

double sum(int n1, int n2) {
  int result = n1 + n2;

  return result.toDouble();
}

double subtract(int n1, int n2) {
  int result = n1 - n2;

  return result.toDouble();
}

double times(int n1, int n2) {
  int result = n1 * n2;

  return result.toDouble();
}

double divide(int n1, int n2) {
  double result = n1 / n2;

  return result;
}
