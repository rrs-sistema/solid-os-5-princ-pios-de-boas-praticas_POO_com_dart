import 'dart:developer';

import 'package:soliid_storage/src/etl/solid/etl/arquivo_solid.dart';
import 'package:soliid_storage/src/model/solid/etl//produto_model_solid.dart';

class JSOMSolid extends ArquivoSolid {
  Future<List<ProdutoModelSolid>?> lerArquivo(String caminhoArquivo) async {
    log('Carregando arquivo JSOM em: $caminhoArquivo');
    return gettDados();
  }
}
