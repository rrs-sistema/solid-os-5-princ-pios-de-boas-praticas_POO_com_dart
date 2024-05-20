import 'package:flutter_test/flutter_test.dart' as flutter_test;
import 'package:soliid_storage/main.dart';
import 'package:test/test.dart';

import 'package:soliid_storage/src/mensageiros/mensageiros.dart';

void main() {
  late TipoMensagem tipo;
  setUp(() {
    tipo = TipoMensagem.email;
  });

  flutter_test.testWidgets('Teste inicial com flutter', (flutter_test.WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
  });

  test('deveRetornarMensagemComTokenPeloEmail', () async {
    Mensageiro mensageiro = Mensageiro();
    mensageiro.setTipo = tipo;
    var result = mensageiro.enviarToken();
    expect(result, 'E-mail: Seu token é: 777-555');
  });

  test('deveRetornarMensagemComTokenPeloSMS', () async {
    Mensageiro mensageiro = Mensageiro();
    tipo = TipoMensagem.sms;
    mensageiro.setTipo = tipo;
    var result = mensageiro.enviarToken();
    expect(result, 'SMS: Seu token é: 666-444');
  });

  test('deveRetornarMensagemComTokenPeloPush', () async {
    Mensageiro mensageiro = Mensageiro();
    tipo = TipoMensagem.push;
    mensageiro.setTipo = tipo;
    var result = mensageiro.enviarToken();
    expect(result, 'Push: Seu token é: 333-111');
  });
}
