import 'dart:developer';

import './../components/components.dart';
import './../interface/interface.dart';
import './../db/db.dart';

class LeadModel extends BaseDados implements ICadastro {
  @override
  enviarNotificacao(Notificacao obj) {
    log('Enviando notificação em LEAD...');
  }

  @override
  registrarLog(Log obj) {
    log('Enviando registrando log em LEAD...');
  }

  @override
  salvar() {
    log('Salvando dados em LEAD...');
  }
}
