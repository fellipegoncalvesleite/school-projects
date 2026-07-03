void main() {
  Map<String, dynamic> person = {
    "name": "Heitor",
    "age": 18,
    "weight": 70.5,
    "isProgrammer": true,
  };

  for (var key in person.keys) {
    print("${key}: ${person[key]}");
  }
}
