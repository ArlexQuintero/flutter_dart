import 'package:flutter_test/flutter_test.dart';
import 'package:money_cobversor/main.dart';

void main() {
  testWidgets('Currency converter smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verificar que los textos principales estén en pantalla
    expect(find.text('Conversor de Moneda'), findsOneWidget);
    expect(find.text('Convertir'), findsOneWidget);
  });
}
