import 'dart:io';

import 'package:soliid_storage/src/etl/solid/etl/arquivo_solid.dart';
import 'package:soliid_storage/src/model/model.dart';

class TXTSolid extends ArquivoSolid {
  //Future<void> lerArquivo(String caminhoArquivo) async {
  Future<List<ProdutoModelSolid>?> lerArquivo(String caminhoArquivo) async {
    final File file = File(caminhoArquivo);
    //1000100000;7896581801395;ALCOOL SOL 46 500ML                     ; ALCOOL SOL 46 500ML                               ;00000;6.990000;00000;00000;00000
    //codigo_interno;gtin;nome;descricao;valor_compra;valor_venda;quantidade_estoque;estoque_minimo;estoque_maximo
    //  1 | 2  | 3  | 4  | 5 | 6 | 7 | 8 | 9
    // 10 | 13 | 40 | 50 | 5 | 8 | 5 | 5 | 5
    var list = await file.readAsLines();
    if (list.isNotEmpty) {
      for (var i = 0; i < list.length; i++) {
        ProdutoModelSolid produto = ProdutoModelSolid(
          codigoInterno: list[i].substring(0, 10).toString(),
          gtin: list[i].substring(10, 23).toString(),
          nome: list[i].substring(23, 63).toString(),
          descricao: list[i].substring(63, 113).toString(),
          valorCompra: double.parse(list[i].substring(113, 118).toString()),
          valorVenda: double.parse(list[i].substring(118, 126).toString()),
          quantidadeEstoque: double.parse(list[i].substring(126, 131).toString()),
          estoqueMinimo: double.parse(list[i].substring(131, 136).toString()),
          estoqueMaximo: double.parse(list[i].substring(136, 141).toString()),
        );
        setDados(produto);
      }
    }
    return gettDados();
  }
}

//10001000007896581801395ALCOOL SOL 46 500ML                     ALCOOL SOL 46 500ML                               000006.990000000000000000000
