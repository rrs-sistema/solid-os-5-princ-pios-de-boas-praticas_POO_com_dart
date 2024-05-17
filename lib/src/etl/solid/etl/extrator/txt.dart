import 'dart:io';
import 'dart:developer';

import 'package:soliid_storage/src/etl/solid/etl/arquivo_solid.dart';
import 'package:soliid_storage/src/model/model.dart';

class TXTSolid extends ArquivoSolid {
  Future<List<ProdutoModelSolid>?> lerArquivo(String caminhoArquivo) async {
    try {
      final File file = File(caminhoArquivo);
      //codigo_interno; gtin; nome; descricao;  valor_compra; valor_venda;  quantidade_estoque; estoque_minimo; estoque_maximo
      // POSSIÇÂO
      //    1         |  2 |   3  |     4    |       5      |      6     |           7        |        8      |       9      |
      // TAMANHOS
      //    10        | 13 |  40  |     50   |       5      |      8     |           5        |        5      |       5      |
      var list = await file.readAsLines();
      if (list.isNotEmpty) {
        for (var i = 0; i < list.length; i++) {
          ProdutoModelSolid produto = ProdutoModelSolid(
            codigoInterno: list[i].substring(0, 10).toString(),
            gtin: list[i].substring(10, 23).toString().trim(),
            nome: list[i].substring(23, 63).toString().trim(),
            descricao: list[i].substring(63, 113).toString().trim(),
            valorCompra: double.parse(list[i].substring(113, 118).toString()),
            valorVenda: double.parse(list[i].substring(118, 126).toString()),
            quantidadeEstoque: double.parse(list[i].substring(126, 131).toString()),
            estoqueMinimo: double.parse(list[i].substring(131, 136).toString()),
            estoqueMaximo: double.parse(list[i].substring(136, 141).toString()),
          );
          setDados(produto);
        }
      }
    } catch (e) {
      log('ERRO AO LER O ARQUIVO TXT: ${e.toString()}');
    }
    return gettDados();
  }
}
