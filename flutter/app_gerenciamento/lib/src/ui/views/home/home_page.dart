import 'package:app_gerenciamento/src/ui/view_models/home_view_model.dart';
import 'package:app_gerenciamento/src/ui/views/home/widgets/app_logo.dart';
import 'package:app_gerenciamento/src/ui/views/home/widgets/link_button.dart';
import 'package:app_gerenciamento/src/ui/views/home/widgets/login_field.dart';
import 'package:app_gerenciamento/src/ui/views/home/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _viewModel = HomeViewModel();

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 28,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: const Color(0xFFE1E7E5)),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x1F000000),
                      blurRadius: 24,
                      offset: Offset(0, 12),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const AppLogo(),
                    const SizedBox(height: 24),
                    Text(
                      'Gerenciador de Tarefas',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(
                            color: const Color(0xFF173B35),
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Entre para organizar suas atividades pessoais.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: const Color(0xFF6A7774),
                      ),
                    ),
                    const SizedBox(height: 32),
                    LoginField(
                      label: 'E-mail',
                      hintText: 'Digite seu e-mail',
                      icon: Icons.email_outlined,
                      keyboardType: TextInputType.emailAddress,
                      controller: _viewModel.emailController,
                    ),
                    const SizedBox(height: 16),
                    LoginField(
                      label: 'Senha',
                      hintText: 'Digite sua senha',
                      icon: Icons.lock_outline,
                      obscureText: true,
                      controller: _viewModel.senhaController,
                    ),
                    const SizedBox(height: 24),
                    PrimaryButton(
                      text: 'Entrar',
                      icon: Icons.login_rounded,
                      onPressed: _viewModel.onPressedEntrar,
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 8,
                      runSpacing: 4,
                      children: [
                        LinkButton(
                          text: 'Esqueci minha senha',
                          icon: Icons.help_outline,
                          onPressed: _viewModel.onPressedEsqueciSenha,
                        ),
                        LinkButton(
                          text: 'Criar conta',
                          icon: Icons.person_add_alt_1_outlined,
                          onPressed: _viewModel.onPressedCriarConta,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
