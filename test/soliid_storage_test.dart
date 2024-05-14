import 'package:test/test.dart';

import 'package:soliid_storage/src/model/normal/carrinho_compra_model.dart';

void main() {
  test('deveMostraItensDaCompra', () {
    CarrinhoCompraModel carrinho = CarrinhoCompraModel();
    var totalItens = carrinho.exibirTotalItens();
    expect(totalItens, 0);
  });

  test('deveIncluirItemNaCompraRetornaValorTotal', () {
    CarrinhoCompraModel carrinho = CarrinhoCompraModel();
    carrinho.incluirItem(nome: 'Bicicleta', valor: 985);
    carrinho.incluirItem(nome: 'Tapete', valor: 75.89);
    var totalItens = carrinho.exibirTotalItens();

    expect(carrinho.exibirValorTotal(), 1060.89);
    expect(totalItens, 2);
  });

  test('deveExibirStatusComoAberto', () {
    CarrinhoCompraModel carrinho = CarrinhoCompraModel();
    expect(carrinho.exibirStatus(), 'ABERTO');
  });

  test('deveConfirmarPedidoAndConfirmarStatus', () {
    CarrinhoCompraModel carrinho = CarrinhoCompraModel();
    if (carrinho.confirmarPedido()) {
      carrinho.validarCarrinho();
      expect(carrinho.exibirStatus(), 'CONFIRMADO');
    } else {
      expect(carrinho.exibirStatus(), 'ABERTO');
    }
  });
}
