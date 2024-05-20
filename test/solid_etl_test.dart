import 'package:flutter_test/flutter_test.dart' as flutter_test;
import 'package:soliid_storage/main.dart';

import 'package:soliid_storage/src/etl/leitor.dart';
import 'package:test/test.dart';

void main() {
  late Leitor leitor;
  setUp(() {
    leitor = Leitor();
    leitor.directory = 'assets/file';
    leitor.file = 'produtos.csv';
  });

  flutter_test.testWidgets('Counter increments smoke test',
      (flutter_test.WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
  });

  test('deveRetornarCaminhoArquivo', () async {
    String? caminhoArquivo = await leitor.pegaCaminhoArquivo();
    expect(caminhoArquivo, isNotNull);
  });

  test('deveLerArquivoCSV', () async {
    String? caminhoArquivo = await leitor.pegaCaminhoArquivo();
    var listaObjeto = await leitor.lerArquivoCSV(caminhoArquivo);
    expect(listaObjeto.length, 2783);
  });

  test('deveLerArquivoText', () async {
    leitor.file = 'produtos.txt';
    String? caminhoArquivo = await leitor.pegaCaminhoArquivo();
    var listaObjeto = await leitor.lerArquivoTXT(caminhoArquivo);
    expect(listaObjeto, isNotNull);
  });
}
