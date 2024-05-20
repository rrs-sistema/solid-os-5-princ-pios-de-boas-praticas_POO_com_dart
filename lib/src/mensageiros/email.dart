import 'dart:developer';

import './mensageiros.dart';

class Email implements IMensagemToken {
  final token = 'E-mail: Seu token é: 777-555';

  @override
  String enviar() {
    log(token);
    return token;
  }
}
