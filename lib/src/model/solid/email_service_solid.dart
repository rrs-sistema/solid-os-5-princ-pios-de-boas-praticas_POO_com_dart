class EmailServiceSolid {
  late String _email;
  late String _de;
  late String _para;
  late String _assunto;
  late String _conteudo;

  EmailServiceSolid(
      {String? email = 'contato@site.com.br',
      String? de = '',
      String? para = '',
      String? assunto = '',
      String? conteudo = ''}) {
    _email = email!;
    _de = de!;
    _para = para!;
    _assunto = assunto!;
    _conteudo = conteudo!;
  }

  static bool enviarMail() {
    print('Email enviado com sucesso!');
    return true;
  }
}
