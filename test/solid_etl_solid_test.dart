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
  });

  flutter_test.testWidgets('Counter increments smoke test',
      (flutter_test.WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
  });

  test('deveRetornarUmaListaDoArquivoCSV', () async {
    leitor.file = 'produtos.csv';
    var lista = await leitor.lerArquivo(TipoArquivo.csv);
    expect(lista?.length, 2782);
  });

  test('deveRetornarUmaListaDoArquivoTXT', () async {
    leitor.file = 'produto.txt';
    var lista = await leitor.lerArquivo(TipoArquivo.txt);
    expect(lista?.length, 10);
  });
}
