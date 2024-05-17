import 'package:soliid_storage/src/model/solid/etl//produto_model_solid.dart';

class ArquivoSolid {
  final List<ProdutoModelSolid> _listDados = [];

  setDados(ProdutoModelSolid? produto) {
    _listDados.add(produto!);
  }

  List<ProdutoModelSolid>? gettDados() {
    return _listDados;
  }
}
