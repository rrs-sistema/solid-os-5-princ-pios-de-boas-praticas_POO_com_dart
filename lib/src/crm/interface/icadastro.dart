import '../components/components.dart';

abstract class ICadastro {
  salvar();
  registrarLog(Log log);
  enviarNotificacao(Notificacao notificacao);
}
