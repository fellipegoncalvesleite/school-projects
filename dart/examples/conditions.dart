void main() {
  double grade = 7;

  print(
    grade < 6
        ? "C"
        : grade < 7
        ? "B"
        : "A",
  );

  int menu = 2;

  switch (menu) {
    case 1:
      print("Menu 1");
      break;

    case 2:
      print("Menu 2");
      break;

    case 3:
      print("Menu 3");
      break;

    default:
      print("Opção Inválida");
  }
}
