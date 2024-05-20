class PoligonoSolid {
  late dynamic _forma;

  dynamic get getForma => _forma;
  set setForma(dynamic value) {
    _forma = value;
  }

  double? getArea() {
    var calc = _forma.getAltura * _forma.getLargura;
    return calc;
  }
}
