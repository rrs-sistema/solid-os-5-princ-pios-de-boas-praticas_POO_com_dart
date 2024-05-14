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
    if (item.name == '' || item.value < 1) return false;
    _itens!.add(item);
    return true;
  }

  bool incluirItens({required List<ItemModelSolid> itens}) {
    final resultItens = itens.where((i) => i.name == '' || i.value < 0).firstOrNull;
    if (resultItens != null) return false;

    _itens!.addAll(itens);
    return true;
  }

  int? _exibirTotalItens() {
    return _itens?.length;
  }

  bool validarCarrinho() {
    return _exibirTotalItens() != null && _exibirTotalItens()! > 0;
  }
}
