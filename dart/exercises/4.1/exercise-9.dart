void main() {
  final number = 6;

  bool isNumberPerfect = checkNumberPerfect(number);

  if (isNumberPerfect) {
    print("$number é perfeito!");
  } else {
    print("$number não é perfeito!");
  }
}

bool checkNumberPerfect(int number) {
  List<int> divisors = getNumberDivisors(number);

  int total = 0;

  for (int number in divisors) {
    total += number;
  }

  bool isNumberPerfect = number == total;

  return isNumberPerfect;
}

List<int> getNumberDivisors(int number) {
  List<int> divisors = [];

  for (int count = 1; count <= number / 2; count++) {
    if (number % count == 0) {
      divisors.add(count);
    }
  }

  return divisors;
}
