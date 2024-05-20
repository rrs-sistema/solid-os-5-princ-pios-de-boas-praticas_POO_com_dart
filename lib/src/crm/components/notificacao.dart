class Notificacao {
  String? _id;
  String? _nome;

  Notificacao({
    String? id,
    String? nome,
    double? valor,
  }) {
    _id = id ?? '';
    _nome = nome ?? '';
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
}
