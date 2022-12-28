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

  @action
  onTapInButton() async {
    _setLoading(true);
    try {
      await _makeRequest();
    } catch (e) {
      print(e);
    }
    _setLoading(false);
  }

  @action
  Future<ResultadoApiModel> _makeRequest() async => await MakeRequestApiModel.makeRequest("palavraChave");
}
