// ignore_for_file: unused_field

class EmailServiceSolid {
  String? _email;
  String? _de;
  String? _para;
  String? _assunto;
  String? _conteudo;

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
