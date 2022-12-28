import 'dart:convert';

class CredenciaisAppModel {
  static const String _usuario = "CANDIDATO";
  static const String _password = "DEV_TESTE@587";

  static Map<String, String> credenciais = {
    "authorization": "Basic ${base64Encode(utf8.encode('$_usuario:$_password'))}"
  };
}
