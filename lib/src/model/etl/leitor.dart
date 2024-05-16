import 'package:soliid_storage/src/model/etl/arquivo.dart';

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

  Future<String> pegaCaminhoArquivo() async {
    return '$_diretorio/$_arquivo';
  }

  Future<List<List<dynamic>>> lerArquivoCSV(String caminho) async {
    Arquivo file = Arquivo();
    return await file.lerArquivoCSV(caminho);
  }

  Future<String> lerArquivoTXT(String caminho) async {
    Arquivo arquivo = Arquivo();
    return await arquivo.lerArquivoTexto(caminho);
  }
}
