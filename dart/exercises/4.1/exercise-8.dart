void main() {
  final email = "heitor@example.com";
  final password = "heitor123";

  bool isEmailValidated = validateEmail(email);
  bool isPasswordValidated = validatePassword(password);

  if (isEmailValidated) {
    print("O email passou na validação");
  } else {
    print("O email não passou na validação");
  }

  if (isPasswordValidated) {
    print("A senha passou na validação");
  } else {
    print("A senha não passou na validação");
  }
}

bool validateEmail(String email) {
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  return emailRegex.hasMatch(email);
}

bool validatePassword(String password) {
  final passwordMinLength = 6;

  if (password.length < passwordMinLength) {
    return false;
  }

  if (!password.contains(RegExp("[0-9]"))) {
    return false;
  }

  return true;
}
