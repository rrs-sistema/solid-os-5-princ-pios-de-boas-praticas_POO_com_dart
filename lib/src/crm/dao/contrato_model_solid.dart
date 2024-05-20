import 'dart:developer';

import './../components/components.dart';
import './../interface/interface.dart';
import './../db/db.dart';

class ContratoModelSolid extends BaseDados implements ICadastroSolid, INotificacaoSolid {
  @override
  enviarNotificacao(Notificacao obj) {
    log('Enviando notificação em Contrato...');
  }

  @override
  salvar() {
    log('Salvando dados em Contrato...');
  }
}
