import 'dart:developer';

import './../components/components.dart';
import './../interface/interface.dart';
import './../db/db.dart';

class ContratoModel extends BaseDados implements ICadastro {
  @override
  enviarNotificacao(Notificacao obj) {
    log('Enviando notificação em Contrato...');
  }

  @override
  registrarLog(Log obj) {
    log('Enviando registrando log em Contrato...');
  }

  @override
  salvar() {
    log('Salvando dados em Contrato...');
  }
}
