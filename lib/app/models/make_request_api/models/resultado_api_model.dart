class ResultadoApiModel {
  String codRet, msGret, popUp;

  ResultadoApiModel({required this.codRet, required this.msGret, required this.popUp});

  factory ResultadoApiModel.fromJson(dynamic json) {
    if (json["codret"] == "0") throw ResultadoApiChaveInvalida();
    return ResultadoApiModel(
        codRet: json["codret"], msGret: json["msgret"], popUp: json["retornapopupteste"][0]["POPUP"]);
  }
}

class ResultadoApiChaveInvalida implements Exception {}
