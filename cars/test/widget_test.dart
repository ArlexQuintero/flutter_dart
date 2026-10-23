// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:cars/main.dart';

void main() {
  testWidgets('Carga de Hoja de Vida', (WidgetTester tester) async {
    // Construir la app y renderizar un frame
    await tester.pumpWidget(const MiHojaDeVidaApp());

    // Verificar que el título de la AppBar se muestre
    expect(find.text('Mi Hoja de Vida'), findsOneWidget);
  });
}
