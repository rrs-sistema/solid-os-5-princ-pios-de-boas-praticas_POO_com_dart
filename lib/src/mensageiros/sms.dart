import 'dart:developer';

import './mensageiros.dart';

class SMS implements IMensagemToken {
  final token = 'SMS: Seu token é: 666-444';
  @override
  String enviar() {
    log(token);
    return token;
  }
}
