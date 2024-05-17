import 'package:soliid_storage/src/etl/solid/etl/extrator/classe_instanciadora.dart';
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

  Future<List<ProdutoModelSolid>?> lerArquivo(TipoArquivo tipo) async {
    String caminho = '$_diretorio/$_arquivo.${tipo.name}';
    ClasseInstanciadora instancia = ClasseInstanciadora();
    var instance = instancia.createInstanceOf(tipo);
    return await instance.lerArquivo(caminho);
  }
}
