import 'package:flutter/services.dart';
import 'package:csv/csv.dart';

class Sessao {
  /// singleton
  factory Sessao() {
    _this ??= Sessao._();
    return _this!;
  }
  static Sessao? _this;
  Sessao._() : super();

  // vamos carregar os dados do arquivo CSV
  static late List<List<dynamic>> tabelaProduto;

  static Future carregaListaProdutos() async {
    // carrega os produtos do arquivo CSV
    final arquivoProdutosCsv = await rootBundle.loadString('assets/file/produtos.csv');
    tabelaProduto = const CsvToListConverter().convert(arquivoProdutosCsv, fieldDelimiter: ';');
  }
}
