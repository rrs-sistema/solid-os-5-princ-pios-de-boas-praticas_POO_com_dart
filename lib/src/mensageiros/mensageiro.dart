import 'package:soliid_storage/src/mensageiros/classe_instanciadora_mensageiro.dart';

import './mensageiros.dart';

class Mensageiro {
  TipoMensagem? _tipo;

  get getTipo => _tipo;
  set setTipo(TipoMensagem value) {
    _tipo = value;
  }

  String enviarToken() {
    ClasseInstanciadoraMensageiro instancia = ClasseInstanciadoraMensageiro();
    var instance = instancia.createInstanceOf(_tipo!);
    return instance.enviar();
  }
}
