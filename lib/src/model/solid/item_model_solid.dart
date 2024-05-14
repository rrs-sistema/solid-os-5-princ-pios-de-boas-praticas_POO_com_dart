class ItemModelSolid {
  String? _id;
  String? _nome;
  double? _valor;

  ItemModelSolid({
    String? id,
    String? nome,
    double? valor,
  }) {
    _id = id ?? '';
    _nome = nome ?? '';
    _valor = valor ?? 0;
  }

  String get id => _id!;
  set id(String? id) {
    if (id != null) {
      _id = id;
    }
  }

  String get name => _nome!;
  set name(String? name) {
    if (name != null) {
      _nome = name;
    }
  }

  double get value => _valor!;
  set value(double? value) {
    if (value != null) {
      _valor = value;
    }
  }

  bool itemValido() {
    if (_nome!.isEmpty) {
      return false;
    }
    if (_valor! < 1) {
      return false;
    }
    return true;
  }
}
