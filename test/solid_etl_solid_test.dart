import 'package:flutter_test/flutter_test.dart' as flutter_test;
import 'package:soliid_storage/main.dart';

import 'package:soliid_storage/src/etl/solid/etl/leitor_solid.dart';
import 'package:soliid_storage/utils/enum_classe.dart';
import 'package:test/test.dart';

void main() {
  late LeitorSolid leitor;
  setUp(() {
    leitor = LeitorSolid();
    leitor.directory = 'assets/file';
    leitor.file = 'produtos';
  });

  flutter_test.testWidgets('Teste inicial com flutter', (flutter_test.WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
  });

  test('deveRetornarUmaListaDoArquivoCSV', () async {
    var lista = await leitor.lerArquivo(TipoArquivo.csv);
    expect(lista?.length, 2782);
  });

  test('deveRetornarUmaListaDoArquivoTXT', () async {
    var lista = await leitor.lerArquivo(TipoArquivo.txt);
    expect(lista?.length, 10);
  });

  test('deveRetornarUmaListaVaziaDoArquivoJSOM', () async {
    var lista = await leitor.lerArquivo(TipoArquivo.json);
    expect(lista?.length, 0);
  });

  test('deveRetornarUmaListaVaziaDoArquivoXML', () async {
    var lista = await leitor.lerArquivo(TipoArquivo.xml);
    expect(lista?.length, 0);
  });
}
