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

  Future<List<List<dynamic>>> lerArquivo(Leitor leitor) async {
    // carrega os produtos do arquivo CSV
    //final arquivoProdutosCsv = await rootBundle.loadString('assets/file/produtos.csv');
    //tabelaProduto = const CsvToListConverter().convert(arquivoProdutosCsv, fieldDelimiter: ';');
    String dir = leitor.directory;
    String fil = leitor.file;
    String caminho = '$dir/$fil';
    final arquivoProdutosCsv = await rootBundle.loadString(caminho);
    return CsvToListConverter().convert(arquivoProdutosCsv, fieldDelimiter: ';');
  }
}
