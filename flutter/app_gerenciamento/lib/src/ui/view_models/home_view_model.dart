import 'package:flutter/material.dart';

class HomeViewModel {
  final emailController = TextEditingController();
  final senhaController = TextEditingController();

  void onPressedEntrar() {}

  void onPressedEsqueciSenha() {}

  void onPressedCriarConta() {}

  void dispose() {
    emailController.dispose();
    senhaController.dispose();
  }
}
