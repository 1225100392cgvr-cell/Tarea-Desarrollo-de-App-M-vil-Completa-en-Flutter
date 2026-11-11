import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ventadecarros/main.dart';
import 'package:ventadecarros/widgets/car_card.dart';

Future<void> abrirCatalogo(WidgetTester tester) async {
  await tester.pumpWidget(const AutoMaxApp());
  expect(find.text('AutoMax'), findsWidgets); // splash
  await tester.pump(const Duration(seconds: 4));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('El splash pasa al catálogo con los autos', (tester) async {
    await abrirCatalogo(tester);
    expect(find.text('Buscar marca o modelo...'), findsOneWidget);
    expect(find.textContaining('RAV4 Hybrid'), findsWidgets);
  });

  testWidgets('El filtro SUV oculta los autos de otras categorías', (tester) async {
    await abrirCatalogo(tester);
    await tester.tap(find.text('SUV').first);
    await tester.pumpAndSettle();
    expect(find.textContaining('RAV4 Hybrid'), findsWidgets);
    expect(find.textContaining('Mazda3'), findsNothing);
  });

  testWidgets('La búsqueda filtra por marca', (tester) async {
    await abrirCatalogo(tester);
    await tester.enterText(find.byType(TextField), 'BMW');
    await tester.pumpAndSettle();
    expect(find.textContaining('Serie 3 330i'), findsWidgets);
    expect(find.textContaining('RAV4 Hybrid'), findsNothing);
  });

  testWidgets('El detalle permite agendar una prueba de manejo', (tester) async {
    await abrirCatalogo(tester);
    await tester.tap(find.byType(CarCard).first);
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));
    expect(find.text('Agendar prueba de manejo'), findsOneWidget);
    await tester.tap(find.text('Agendar prueba de manejo'));
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));
    expect(find.text('Prueba de manejo'), findsOneWidget);
  });
}
