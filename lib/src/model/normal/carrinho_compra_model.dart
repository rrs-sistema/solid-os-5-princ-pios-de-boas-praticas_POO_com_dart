class CarrinhoCompraModel {
  //atributos
  List? _itens;
  String? _status;
  double? _valor;

  CarrinhoCompraModel() {
    _itens = [];
    _status = 'ABERTO';
    _valor = 0;
  }

  bool incluirItem({required String nome, required double valor}) {
    _itens!.add({'item': nome, 'valor': valor});
    if (_valor != null) {
      _valor = _valor! + valor;
    }
    return true;
  }

  int? exibirTotalItens() {
    return _itens?.length;
  }

  double? exibirValorTotal() {
    return _valor;
  }

  String? exibirStatus() {
    return _status;
  }

  List<dynamic>? mostrarItens() {
    return _itens;
  }

  bool confirmarPedido() {
    if (validarCarrinho()) {
      _status = 'CONFIRMADO';
      _enviarEmailConfirmacao();
      return true;
    }
    return false;
  }

  _enviarEmailConfirmacao() {
    print('Enviando email de confirmação...');
  }

  bool validarCarrinho() {
    return exibirTotalItens() != null && exibirTotalItens()! > 0;
  }
}
