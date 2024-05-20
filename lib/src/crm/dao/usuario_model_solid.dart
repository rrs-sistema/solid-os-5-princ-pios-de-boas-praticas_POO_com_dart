import 'dart:developer';

import './../components/components.dart';
import './../interface/interface.dart';
import './../db/db.dart';

class UsuarioModelSolid extends BaseDados implements ICadastroSolid, INotificacaoSolid, ILogSolid {
  @override
  enviarNotificacao(Notificacao obj) {
    log('Enviando notificação em Usuario...');
  }

  @override
  registrarLog(Log obj) {
    log('Enviando registrando log em Usuario...');
  }

  @override
  salvar() {
    log('Salvando dados em Usuario...');
  }
}
