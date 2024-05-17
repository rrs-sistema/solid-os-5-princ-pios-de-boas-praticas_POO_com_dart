import 'package:soliid_storage/src/etl/solid/etl/extrator/extrator.dart';
import 'package:soliid_storage/utils/enum_classe.dart';

class ClasseInstanciadora {
  T? createInstanceOf<T>(TipoArquivo tipo) {
    final factories = <TipoArquivo, T Function()>{
      TipoArquivo.csv: () => CSVSolid() as T,
      TipoArquivo.txt: () => TXTSolid() as T,
      TipoArquivo.json: () => JSOMSolid() as T,
      TipoArquivo.xml: () => XMLSolid() as T,
    };
    final createInstance = factories[tipo];
    return createInstance?.call();
  }
}
