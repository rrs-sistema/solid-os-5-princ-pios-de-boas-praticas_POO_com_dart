import 'package:soliid_storage/src/model/solid/item_model_solid.dart';

class CarrinhoCompraModelSolid {
  //atributos
  List<ItemModelSolid>? _itens;

  CarrinhoCompraModelSolid() {
    _itens = [];
  }

  //métodos
  List<ItemModelSolid>? getItens() {
    return _itens;
  }

  bool incluirItem({required ItemModelSolid item}) {
    _itens!.add(item);
    return true;
  }

  int? _exibirTotalItens() {
    return _itens?.length;
  }

  bool validarCarrinho() {
    return _exibirTotalItens() != null && _exibirTotalItens()! > 0;
  }
}
