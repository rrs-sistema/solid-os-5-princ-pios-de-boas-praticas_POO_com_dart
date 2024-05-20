class QuadradoSolidModel {
  double? _largura;
  double? _altura;

  double get getLargura => _largura!;
  set setLargura(double? value) {
    _largura = value;
    _altura = value;
  }

  double get getAltura => _altura!;
  set setAltura(double? value) {
    _largura = value;
    _altura = value;
  }
}
