import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:processo_seletivo_mtb/app/models/credenciais_app/credenciais_app_model.dart';

class RequestAppModel {
  static Future<Response> makeGet({required String url, Map<String, String>? headers}) async {
    var realHeaders = <String, String>{};
    realHeaders.addAll(CredenciaisAppModel.credenciais);
    if (headers != null) realHeaders.addAll(headers);
    return await http.get(Uri.parse(url), headers: realHeaders);
  }
}
