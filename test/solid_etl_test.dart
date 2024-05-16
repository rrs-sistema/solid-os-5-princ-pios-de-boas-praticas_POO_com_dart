import 'package:flutter_test/flutter_test.dart' as flutter_test;
import 'package:soliid_storage/main.dart';

import 'package:soliid_storage/src/model/etl/leitor.dart';
import 'package:test/test.dart';

void main() {
  flutter_test.testWidgets('Counter increments smoke test',
      (flutter_test.WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
  });

  test('deveLerArquivoCSV', () async {
    Leitor leitor = Leitor();
    leitor.directory = 'assets/file';
    leitor.file = 'produtos.csv';
    var list = await leitor.lerArquivo(leitor);
    expect(list.length, 2783);
  });
}
