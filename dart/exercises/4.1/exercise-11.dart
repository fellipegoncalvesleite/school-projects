void main() {
  final username = "Heitor Rodrigues";
  final password = "123@-abc";

  bool isUsernameValidated = validateUsername(username);
  bool isPasswordValidated = validatePassword(password);

  if (isUsernameValidated) {
    print("O usuário passou na validação");
  } else {
    print("O usuário não passou na validação");
  }

  if (isPasswordValidated) {
    print("A senha passou na validação");
  } else {
    print("A senha não passou na validação");
  }
}

bool validateUsername(String username) {
  final usernameRegex = RegExp(r'^[a-zA-Z][a-zA-Z0-9._-\s]{2,19}$');

  return usernameRegex.hasMatch(username.trim());
}

bool validatePassword(String password) {
  final passwordRegex = RegExp(r'^[A-Za-z0-9@#$%-_\s]{4,}$');

  return passwordRegex.hasMatch(password.trim());
}
