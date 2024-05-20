import 'dart:developer';

class BaseDados {
  final String _stringConect = 'string de conexão';

  conectar() {
    // Conecxão com o banco de dados
    log('Conectando com ===>> $_stringConect');
  }
}
