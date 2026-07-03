void main() {
  String firstName = "Heitor";
  String lastName = "Rodrigues Carvalho";

  String fullName = getFullName(firstName, lastName);

  print(fullName);
}

String getFullName(String firstName, String lastName) {
  return "$firstName $lastName";
}
