void main() {
  for (int i = 0; i < 5; i++) {
    print("Repetição $i");
  }

  int j = 0;

  while (j < 5) {
    print("Repetição $j");
    j++;
  }

  do {
    print("Repetição $j");
    j++;
  } while (j < 10);

  List<String> names = ["Alice", "Bob", "Charlie"];

  for (String name in names) {
    print(name);
  }
}
