class RetanguloModel {
  double? largura;
  double? altura;

  double get getLargura => largura!;
  set setLargura(double? value) {
    if (value != null) {
      largura = value;
    }
  }

  double get getAltura => altura!;
  set setAltura(double? value) {
    if (value != null) {
      altura = value;
    }
  }

  double getArea() {
    return getAltura * getLargura;
  }
}
