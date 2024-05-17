import 'dart:developer';

import 'package:flutter_test/flutter_test.dart' as flutter_test;
import 'package:soliid_storage/main.dart';
import 'package:test/test.dart';

import 'package:soliid_storage/src/app_poligonos/app_poligonos.dart';

void main() {
  setUp(() {});

  flutter_test.testWidgets('Teste inicial com flutter', (flutter_test.WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
  });

  test('deveRetornarCalculoDoRetangulo', () async {
    RetanguloModel retangulo = RetanguloModel();
    retangulo.setAltura = 5;
    retangulo.setLargura = 10;
    var valor = retangulo.getArea();
    expect(valor, 50);
  });

  test('deveRetornarCalculoDoQuadrado', () async {
    QuadradoModel quadrado = QuadradoModel();
    quadrado.setAltura = 5;
    var valor = quadrado.getArea();
    log('Tamanho: $valor');
    expect(valor, 25);
    quadrado.setLargura = 10;
    valor = quadrado.getArea();
    log('Tamanho: $valor');
    expect(valor, 100);
  });
}
