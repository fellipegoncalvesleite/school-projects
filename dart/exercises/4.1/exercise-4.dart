void main() {
  final number = 30;

  bool isSpecialNumber = checkSpecialNumber(number);

  if (isSpecialNumber) {
    print("$number é um número especial!");
  } else {
    print("$number não é um número especial");
  }
}

bool checkSpecialNumber(int number) {
  if (number % 15 == 0) {
    return true;
  }

  return false;
}
