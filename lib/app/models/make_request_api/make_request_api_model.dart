import 'dart:convert';

import 'package:processo_seletivo_mtb/app/models/make_request_api/models/resultado_api_model.dart';
import 'package:processo_seletivo_mtb/app/models/request_app/request_app_model.dart';

class MakeRequestApiModel {
  static const String _url = "http://mtb.no-ip.org:5190/mtb/v0100/api/RetornaPopUpTeste/";

  static Future<ResultadoApiModel> makeRequest(String palavraChave) async {
    var jsonResponse = jsonDecode((await RequestAppModel.makeGet(url: "$_url$palavraChave")).body);
    return ResultadoApiModel.fromJson(jsonResponse[0]["mtb"]);
  }
}
