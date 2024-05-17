import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:csv/csv.dart';

import 'package:soliid_storage/src/etl/solid/etl/arquivo_solid.dart';
import 'package:soliid_storage/src/model/solid/etl//produto_model_solid.dart';

class CSVSolid extends ArquivoSolid {
  Future<List<ProdutoModelSolid>?> lerArquivo(String caminhoArquivo) async {
    try {
      var file = await rootBundle.loadString(caminhoArquivo);
      var listCsv = CsvToListConverter().convert(file, fieldDelimiter: ';');
      if (listCsv.isNotEmpty) {
        for (var i = 0; i < listCsv.length; i++) {
          if (i == 0) continue;
          ProdutoModelSolid produto = ProdutoModelSolid(
            codigoInterno: listCsv[i][0].toString(),
            gtin: listCsv[i][1].toString(),
            nome: listCsv[i][2].toString(),
            descricao: listCsv[i][3].toString(),
            valorCompra: double.parse(listCsv[i][4].toString()),
            valorVenda: double.parse(listCsv[i][5].toString()),
            quantidadeEstoque: double.parse(listCsv[i][6].toString()),
            estoqueMinimo: double.parse(listCsv[i][7].toString()),
            estoqueMaximo: double.parse(listCsv[i][8].toString()),
          );
          setDados(produto);
        }
      }
    } catch (e) {
      log('ERRO AO LER O ARQUIVO: ${e.toString()}');
    }
    return gettDados();
  }
}
