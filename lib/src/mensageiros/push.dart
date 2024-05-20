import 'dart:developer';

import './mensageiros.dart';

class Push implements IMensagemToken {
  final token = 'Push: Seu token é: 333-111';

  @override
  String enviar() {
    log(token);
    return token;
  }
}
