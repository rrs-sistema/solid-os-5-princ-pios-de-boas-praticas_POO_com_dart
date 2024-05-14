import 'package:soliid_storage/src/model/solid/carrinho_compra_model_solid.dart';
import 'package:soliid_storage/src/model/solid/item_model_solid.dart';
import 'package:soliid_storage/src/model/solid/pedido_model_solid.dart';
import 'package:test/test.dart';

void main() {
  test('deveVelidarSeTemNome', () {
    PedidoModelSolid pedido = PedidoModelSolid();
    ItemModelSolid item1 = ItemModelSolid();
    item1.nome = 'Produto Item 001';
    pedido.getCarrinhoCompra()!.incluirItem(item: item1);

    ItemModelSolid item2 = ItemModelSolid();
    item2.nome = 'Produto Item 002';
    pedido.getCarrinhoCompra()!.incluirItem(item: item2);

    ItemModelSolid item3 = ItemModelSolid();
    item3.nome = 'Produto Item 003';
    pedido.getCarrinhoCompra()!.incluirItem(item: item3);

    CarrinhoCompraModelSolid? carrinho = pedido.getCarrinhoCompra();
    List<ItemModelSolid>? itens = carrinho!.getItens();
    //for (var item in itens!) {}

    //print('Carrinho: ===> ${itens!.length}');
    expect(itens!.length, 3);
  });
}
