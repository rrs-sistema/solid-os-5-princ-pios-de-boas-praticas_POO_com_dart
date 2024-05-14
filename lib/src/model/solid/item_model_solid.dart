class ItemModelSolid {
  String? _nome;
  double? _valor;

  ItemModelSolid() {
    _nome = '';
    _valor = 0;
  }

  String get nome => _nome!;
  set nome(String? name) {
    if (name != null) {
      _nome = name;
    }
  }

  double get value => _valor!;
  set valor(double? value) {
    if (value != null) {
      _valor = value;
    }
  }
}
