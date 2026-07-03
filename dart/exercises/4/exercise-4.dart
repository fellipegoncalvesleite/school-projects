void main() {
  final email1 = "heitor@example.com";
  final email2 = "invalid-email";

  print(
    "${email1.padRight(20)} | ${parseEmail(email1) ? "Válido" : "Inválido"}",
  );
  print(
    "${email2.padRight(20)} | ${parseEmail(email2) ? "Válido" : "Inválido"}",
  );
}

bool parseEmail(String email) {
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  return emailRegex.hasMatch(email);
}
