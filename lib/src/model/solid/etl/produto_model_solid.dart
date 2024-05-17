class ProdutoModelSolid {
  String? _codigoInterno;
  String? _gtin;
  String? _nome;
  String? _descricao;
  double? _valorCompra;
  double? _valorVenda;
  double? _quantidadeEstoque;
  double? _estoqueMinimo;
  double? _estoqueMaximo;

  ProdutoModelSolid({
    String? codigoInterno,
    String? gtin,
    String? nome,
    String? descricao,
    double? valorCompra,
    double? valorVenda,
    double? quantidadeEstoque,
    double? estoqueMinimo,
    double? estoqueMaximo,
  }) {
    _codigoInterno = codigoInterno ?? '';
    _gtin = gtin ?? '';
    _nome = nome ?? '';
    _descricao = descricao ?? '';
    _valorCompra = valorCompra ?? 0;
    _valorVenda = valorVenda ?? 0;
    _quantidadeEstoque = quantidadeEstoque ?? 0;
    _estoqueMinimo = estoqueMinimo ?? 0;
    _estoqueMaximo = estoqueMaximo ?? 0;
  }

  String get codigoInterno => _codigoInterno!;
  set codigoInterno(String? param) {
    if (param != null) {
      _codigoInterno = param;
    }
  }

  String get gtin => _gtin!;
  set gtin(String? param) {
    if (param != null) {
      _gtin = param;
    }
  }

  String get nome => _nome!;
  set nome(String? param) {
    if (param != null) {
      _nome = param;
    }
  }

  String get descricao => _descricao!;
  set descricao(String? param) {
    if (param != null) {
      _descricao = param;
    }
  }

  double get valorCompra => _valorCompra!;
  set valorCompra(double? param) {
    if (param != null) {
      _valorCompra = param;
    }
  }

  double get valorVenda => _valorVenda!;
  set valorVenda(double? param) {
    if (param != null) {
      _valorVenda = param;
    }
  }

  double get quantidadeEstoque => _quantidadeEstoque!;
  set quantidadeEstoque(double? param) {
    if (param != null) {
      _quantidadeEstoque = param;
    }
  }

  double get estoqueMinimo => _estoqueMinimo!;
  set estoqueMinimo(double? param) {
    if (param != null) {
      _estoqueMinimo = param;
    }
  }

  double get estoqueMaximo => _estoqueMaximo!;
  set estoqueMaximo(double? param) {
    if (param != null) {
      _estoqueMaximo = param;
    }
  }
}
