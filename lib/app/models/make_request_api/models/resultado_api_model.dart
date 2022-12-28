import '../../zip_model/zip_model.dart';

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
}

enum EnumResultadoApiTipos {
  zero,
  chaveValida,
  chaveInvalida,
  internet,
  erroDesconhecido;
}

class ResultadoApiChaveInvalida implements Exception {}
