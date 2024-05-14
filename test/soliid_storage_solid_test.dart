import 'package:test/test.dart';

import 'package:soliid_storage/src/model/model.dart';

import './mocks/mocks.dart';

void main() {
  late PedidoModelSolid pedido;
  late List<ItemModelSolid> makeItensInValido;
  late List<ItemModelSolid> makeItensValido;

  setUp(() {
    // Create object model.
    pedido = PedidoModelSolid();
    // Create mock object.
    makeItensInValido = FakeItensFactory.makeItensInValido();
    makeItensValido = FakeItensFactory.makeItensValido();
  });

  test('testarEstadoInicialDosItens', () {
    final result = pedido.getCarrinhoCompra()!.incluirItens(itens: makeItensInValido);
    expect(result, false);
  });

  test('deveGarantirFuncionamentoMetodoSetName', () {
    final item = ItemModelSolid();
    item.id = '001';
    item.name = 'Bicicleta';
    expect(item.name, 'Bicicleta');
  });

  test('deveGarantirFuncionamentoMetodoSetValue', () {
    final item = ItemModelSolid();
    item.id = '001';
    item.value = 1500;
    expect(item.value, 1500);
  });

  test('deveValidarInsercaoItensRetornandoTRUE', () {
    final result = pedido.getCarrinhoCompra()!.incluirItens(itens: makeItensValido);
    expect(true, result);
  });

  test('deveValidarCarrinhoRetornandoTRUE', () {
    pedido.getCarrinhoCompra()!.incluirItens(itens: makeItensValido);
    final result = pedido.getCarrinhoCompra()!.validarCarrinho();
    expect(true, result);
  });

  test('deveInValidarInsercaoItensRetornandoFALSE', () {
    final result = pedido.getCarrinhoCompra()!.incluirItens(itens: makeItensInValido);
    expect(false, result);
  });

  test('deveInValidarCarrinhoRetornandoFALSE', () {
    final result = pedido.getCarrinhoCompra()!.validarCarrinho();
    expect(false, result);
  });
}
