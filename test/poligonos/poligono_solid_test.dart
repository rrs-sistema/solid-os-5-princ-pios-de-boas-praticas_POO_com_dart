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
    PoligonoSolid retangulo = PoligonoSolid();
    retangulo.setForma = RetanguloSolidModel();
    var obj = retangulo.getForma as RetanguloSolidModel;
    obj.setAltura = 5;
    obj.setLargura = 10;
    var valor = retangulo.getArea();
    expect(valor, 50);
  });

  test('deveRetornarCalculoDoQuadrado', () async {
    PoligonoSolid retangulo = PoligonoSolid();
    retangulo.setForma = QuadradoSolidModel();
    var obj = retangulo.getForma as QuadradoSolidModel;
    obj.setAltura = 5;
    var valor = retangulo.getArea();
    expect(valor, 25);
  });
}
