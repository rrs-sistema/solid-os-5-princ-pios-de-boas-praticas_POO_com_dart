import './mensageiros.dart';

class MensageiroDependencyInersionPrinciple {
  TipoMensagem? _tipo;
  IMensagemToken? _iMensagemToken;

  MensageiroDependencyInersionPrinciple(IMensagemToken iMensagemToken) {
    _iMensagemToken = iMensagemToken;
  }

  get getTipo => _tipo;
  set setTipo(TipoMensagem value) {
    _tipo = value;
  }

  String enviarToken() {
    return _iMensagemToken!.enviar() + " - ${_iMensagemToken!.runtimeType.toString()}";
  }
}
