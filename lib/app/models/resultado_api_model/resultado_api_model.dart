import 'dart:convert';

import '../request_app/request_app_model.dart';
import '../zip_model/zip_model.dart';

class ResultadoApiModel {
  String codRet, msGret;
  String pathFileCacheTemporary;

  ResultadoApiModel({required this.codRet, required this.msGret, required this.pathFileCacheTemporary});

  static Future<ResultadoApiModel> fromJson(dynamic json) async {
    if (json["codret"] == "0") throw ResultadoApiChaveInvalida();
    var fileZipDecode = await ZipModel.decode(json["retornapopupteste"][0]["POPUP"]);
    var pathFileImage = await ZipModel.createFileData(fileZipDecode, 0);

    return ResultadoApiModel(
        codRet: json["codret"], msGret: json["msgret"], pathFileCacheTemporary: pathFileImage);
  }

  static Future<ResultadoApiModel> makeRequest(String palavraChave) async {
    const String url = "http://mtb.no-ip.org:5190/mtb/v0100/api/RetornaPopUpTeste/";
    var jsonResponse = jsonDecode((await RequestAppModel.makeGet(url: "$url$palavraChave")).body);
    return await ResultadoApiModel.fromJson(jsonResponse["mtb"]);
  }
}

enum EnumResultadoApiTipos {
  zero,
  chaveValida,
  chaveInvalida,
  internet,
  erroDesconhecido;
}

class ResultadoApiChaveInvalida implements Exception {}
