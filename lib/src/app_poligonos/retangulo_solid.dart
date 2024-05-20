class RetanguloSolidModel {
  double? _largura;
  double? _altura;

  double get getLargura => _largura!;
  set setLargura(double? value) {
    if (value != null) {
      _largura = value;
    }
  }

  double get getAltura => _altura!;
  set setAltura(double? value) {
    if (value != null) {
      _altura = value;
    }
  }
}
