void main() {
  welcome("Heitor");
}

void welcome(String name) {
  print("Bem-vindo, ${name}!");
  calcular(n1: 5, n2: 10, operation: sum);
}

int sum(int n1, int n2) {
  return n1 + n2;
}

void calcular({
  required int n1,
  required int n2,
  required Function(int, int) operation,
}) {
  print("${operation(n1, n2)}");
}
