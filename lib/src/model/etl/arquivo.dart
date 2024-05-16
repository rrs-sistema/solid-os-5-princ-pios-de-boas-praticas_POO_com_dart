import 'dart:io';

import 'package:csv/csv.dart';
import 'package:flutter/services.dart';

class Arquivo {
  Future<List<List<dynamic>>> lerArquivoCSV(String caminhoArquivo) async {
    var file = await rootBundle.loadString(caminhoArquivo);
    return CsvToListConverter().convert(file, fieldDelimiter: ';');
  }

  Future<String> lerArquivoTexto(String caminhoArquivo) async {
    final File file = File(caminhoArquivo);
    return await file.readAsString();
  }
}
