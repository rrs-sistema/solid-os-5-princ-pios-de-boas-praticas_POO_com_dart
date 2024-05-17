import 'package:soliid_storage/src/etl/solid/etl/extrator/csv.dart';
import 'package:soliid_storage/src/etl/solid/etl/extrator/txt.dart';
import 'package:soliid_storage/src/model/solid/etl//produto_model_solid.dart';
import 'package:soliid_storage/utils/enum_classe.dart';

class LeitorSolid {
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

  String getCaminho() {
    return '$_diretorio/$_arquivo';
  }

  Future<List<ProdutoModelSolid>?> lerArquivo(TipoArquivo tipo) async {
    List<ProdutoModelSolid>? listRetorno = List.empty();
    final caminho = getCaminho();
    var arq = CSVSolid();
    listRetorno = await arq.lerArquivo(caminho);
    switch (tipo) {
      case TipoArquivo.csv:
        {
          var arq = CSVSolid();
          listRetorno = await arq.lerArquivo(caminho);
        }
      case TipoArquivo.txt:
        {
          var arq = TXTSolid();
          listRetorno = await arq.lerArquivo(caminho);
        }
      default:
        var arq = CSVSolid();
        listRetorno = await arq.lerArquivo(caminho);
    }
    return listRetorno;
  }

  Future<List<ProdutoModelSolid>?> lerArquivo01() async {
    final caminho = getCaminho();
    //String extensao = p.extension(caminho);
    var arq = CSVSolid();
    return await arq.lerArquivo(caminho);
  }

  /*
  Future<List<List<dynamic>>> lerArquivoCSV(String caminho) async {
    ArquivoSolid file = ArquivoSolid();
    return await file.lerArquivoCSV(caminho);
  }

  Future<String> lerArquivoTXT(String caminho) async {
    ArquivoSolid arquivo = ArquivoSolid();
    return await arquivo.lerArquivoTexto(caminho);
  }
  */
}
