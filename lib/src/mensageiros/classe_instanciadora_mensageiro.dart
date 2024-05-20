import 'package:soliid_storage/src/mensageiros/mensageiros.dart';

class ClasseInstanciadoraMensageiro {
  T? createInstanceOf<T>(TipoMensagem tipo) {
    final factories = <TipoMensagem, T Function()>{
      TipoMensagem.email: () => Email() as T,
      TipoMensagem.sms: () => SMS() as T,
      TipoMensagem.push: () => Push() as T,
    };
    final createInstance = factories[tipo];
    return createInstance?.call();
  }
}
