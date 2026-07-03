import 'dart:math';

void main() {
  List<int> userNumbers = [3, 9, 18, 22, 47, 54];

  List<int> drawnNumbers = drawNumbers(6);

  printNumbers(userNumbers, "Números do Usuário");
  printNumbers(drawnNumbers, "Números Sorteados");

  bool drawResult = checkDrawResult(userNumbers, drawnNumbers);

  print(drawResult ? "Você ganhou!" : "Você perdeu!");
}

List<int> drawNumbers(int amount) {
  List<int> drawnNumbers = [];

  for (int i = 0; i < amount; i++) {
    drawnNumbers.add(Random().nextInt(60) + 1);
  }

  return drawnNumbers;
}

void printNumbers(List<int> numbers, String title) {
  print("$title:");

  for (int number in numbers) {
    print("- ${number.toString().padLeft(2)}");
  }
}

bool checkDrawResult(List<int> userNumbers, List<int> drawnNumbers) {
  userNumbers.sort();
  drawnNumbers.sort();

  if (userNumbers.length != drawnNumbers.length) {
    print("O usuário deve ter ${drawnNumbers.length} números sorteados");

    return false;
  }

  for (int i = 0; i < drawnNumbers.length; i++) {
    if (userNumbers[i] != drawnNumbers[i]) {
      return false;
    }
  }

  return true;
}
