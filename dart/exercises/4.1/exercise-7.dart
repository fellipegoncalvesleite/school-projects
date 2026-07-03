void main() {
  int number = 12421;

  bool isReflectedNumber = checkReflectedNumber(number);

  if (isReflectedNumber) {
    print("$number é um número espelhado!");
  } else {
    print("$number não é um número espelhado!");
  }
}

bool checkReflectedNumber(int number) {
  String textNumber = number.toString();

  for (int index = 0; index <= textNumber.length ~/ 2; index++) {
    if (textNumber[index] != textNumber[textNumber.length - index - 1]) {
      return false;
    }
  }

  return true;
}
