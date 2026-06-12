import 'package:app_gerenciamento/src/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('mostra a tela de login', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Gerenciador de Tarefas'), findsOneWidget);
    expect(find.text('E-mail'), findsOneWidget);
    expect(find.text('Senha'), findsOneWidget);
    expect(find.text('Entrar'), findsOneWidget);
    expect(find.text('Esqueci minha senha'), findsOneWidget);
    expect(find.text('Criar conta'), findsOneWidget);
  });
}
