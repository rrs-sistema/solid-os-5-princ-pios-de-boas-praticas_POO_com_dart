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

  bool itemValido({required String nome, required double valor}) {
    if (nome.isEmpty) {
      return false;
    }
    if (valor < 1) {
      return false;
    }
    return true;
  }

  bool incluirItem({required String nome, required double valor}) {
    if (itemValido(nome: nome, valor: valor)) {
      _itens!.add({'item': nome, 'valor': valor});
      _valor = _valor! + valor;
      return true;
    }
    return false;
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
