import 'package:csv/csv.dart';
import 'package:flutter/services.dart';

class Leitor {
  String? _diretorio;
  String? _arquivo;

  String get directory => _diretorio!;
  set directory(String? diretorioParam) {
    _diretorio = diretorioParam;
  }

  String get file => _arquivo!;
  set file(String? arquivoParam) {
    _arquivo = arquivoParam;
  }

  static late List<List<dynamic>> tabelaProduto;

  Future<List<List<dynamic>>> lerArquivo() async {
    // carrega os produtos do arquivo CSV
    //final arquivoProdutosCsv = await rootBundle.loadString('assets/file/produtos.csv');
    //tabelaProduto = const CsvToListConverter().convert(arquivoProdutosCsv, fieldDelimiter: ';');
    final arquivoProdutosCsv = await rootBundle.loadString('$directory/$file');
    return CsvToListConverter().convert(arquivoProdutosCsv, fieldDelimiter: ';');
  }
}
