import 'package:flutter/material.dart';
import 'package:processo_seletivo_mtb/app/models/make_request_api/models/resultado_api_model.dart';
import 'package:processo_seletivo_mtb/app/pages/home_page/controller/home_ctr.dart';

import 'pop_up_home/pop_up_bem_sucedido.dart';
import 'pop_up_home/pop_up_erro.dart';

class ChooseTipoPopUp extends StatelessWidget {
  const ChooseTipoPopUp({super.key, required this.homeCtr});
  final HomeCtr homeCtr;
  @override
  Widget build(BuildContext context) {
    switch (homeCtr.tipoPopUp) {
      case EnumResultadoApiTipos.zero:
        return Container();
      case EnumResultadoApiTipos.chaveValida:
        return PopUpBemSucedido(homeCtr: homeCtr);
      case EnumResultadoApiTipos.chaveInvalida:
        return const PopUpErro(
            title: "Chave Inválida!", desc: "Por favor, para continuar, insira uma chave valida.");
      case EnumResultadoApiTipos.internet:
        return const PopUpErro(title: "Erro de conexão", desc: "Por favor, conecte-se a internet.");
      case EnumResultadoApiTipos.erroDesconhecido:
        return const PopUpErro(title: "Erro de desconhecido", desc: "Por favor, tente mais tarde.");
    }
  }
}
