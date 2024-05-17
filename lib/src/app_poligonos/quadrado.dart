import 'package:soliid_storage/src/app_poligonos/retangulo.dart';

class QuadradoModel extends RetanguloModel {
  @override
  set setLargura(double? value) {
    largura = value;
    altura = value;
  }

  @override
  set setAltura(double? value) {
    largura = value;
    altura = value;
  }
}
