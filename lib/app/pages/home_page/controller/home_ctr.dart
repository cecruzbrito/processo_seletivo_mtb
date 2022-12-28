import 'dart:io';

import 'package:mobx/mobx.dart';
import 'package:processo_seletivo_mtb/app/models/make_request_api/make_request_api_model.dart';

import '../../../models/make_request_api/models/resultado_api_model.dart';
part 'home_ctr.g.dart';

class HomeCtr = _HomeCtrBase with _$HomeCtr;

abstract class _HomeCtrBase with Store {
  @observable
  bool isLoading = false;

  @computed
  bool get isEnableButton => !isLoading;

  @action
  void _setLoading(bool value) => isLoading = value;

  @observable
  bool isShowPopUp = false;

  @action
  void _setIsShowPopUp(bool value) => isShowPopUp = value;

  @action
  void closePopUp() => _setIsShowPopUp(false);

  @observable
  ResultadoApiModel? resultadoApi;

  @action
  void _setResultadoApi(ResultadoApiModel value) => resultadoApi = value;

  @observable
  var tipoPopUp = EnumResultadoApiTipos.zero;

  @action
  void _setTipoPopUp(EnumResultadoApiTipos value) => tipoPopUp = value;

  @action
  onTapInButton() async {
    if (!isEnableButton) return;
    _setIsShowPopUp(false);
    _setLoading(true);
    await _tratamentoRequest();
    _setLoading(false);
  }

  Future<void> _tratamentoRequest() async {
    try {
      _setResultadoApi(await _makeRequest());
      _setTipoPopUp(EnumResultadoApiTipos.chaveValida);
    } on ResultadoApiChaveInvalida {
      _setTipoPopUp(EnumResultadoApiTipos.chaveInvalida);
    } on SocketException {
      _setTipoPopUp(EnumResultadoApiTipos.internet);
    } catch (e) {
      _setTipoPopUp(EnumResultadoApiTipos.erroDesconhecido);
    }
    _setIsShowPopUp(true);
  }

  @action
  Future<ResultadoApiModel> _makeRequest() async => await MakeRequestApiModel.makeRequest("DEV FLUTTER");
}
