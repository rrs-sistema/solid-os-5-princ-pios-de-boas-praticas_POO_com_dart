// ignore_for_file: unused_field

import './carrinho_compra_model_solid.dart';

class PedidoModelSolid {
  String? _status;
  CarrinhoCompraModelSolid? _carrinhoCompra;
  double? _valorPedido;

  PedidoModelSolid() {
    _status = 'ABERTO';
    _carrinhoCompra = CarrinhoCompraModelSolid();
    _valorPedido = 0;
  }

  CarrinhoCompraModelSolid? getCarrinhoCompra() {
    return _carrinhoCompra;
  }

  String? getStatus() {
    return _status;
  }

  setStatus(String status) {
    _status = status;
  }

  bool confirmar() {
    if (_carrinhoCompra!.validarCarrinho()) {
      setStatus('CONFIRMADO');
      return true;
    }
    return false;
  }
}
