// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_ctr.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeCtr on _HomeCtrBase, Store {
  Computed<bool>? _$isEnableButtonComputed;

  @override
  bool get isEnableButton =>
      (_$isEnableButtonComputed ??= Computed<bool>(() => super.isEnableButton,
              name: '_HomeCtrBase.isEnableButton'))
          .value;

  late final _$isLoadingAtom =
      Atom(name: '_HomeCtrBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$isShowPopUpAtom =
      Atom(name: '_HomeCtrBase.isShowPopUp', context: context);

  @override
  bool get isShowPopUp {
    _$isShowPopUpAtom.reportRead();
    return super.isShowPopUp;
  }

  @override
  set isShowPopUp(bool value) {
    _$isShowPopUpAtom.reportWrite(value, super.isShowPopUp, () {
      super.isShowPopUp = value;
    });
  }

  late final _$resultadoApiAtom =
      Atom(name: '_HomeCtrBase.resultadoApi', context: context);

  @override
  ResultadoApiModel? get resultadoApi {
    _$resultadoApiAtom.reportRead();
    return super.resultadoApi;
  }

  @override
  set resultadoApi(ResultadoApiModel? value) {
    _$resultadoApiAtom.reportWrite(value, super.resultadoApi, () {
      super.resultadoApi = value;
    });
  }

  late final _$tipoPopUpAtom =
      Atom(name: '_HomeCtrBase.tipoPopUp', context: context);

  @override
  EnumResultadoApiTipos get tipoPopUp {
    _$tipoPopUpAtom.reportRead();
    return super.tipoPopUp;
  }

  @override
  set tipoPopUp(EnumResultadoApiTipos value) {
    _$tipoPopUpAtom.reportWrite(value, super.tipoPopUp, () {
      super.tipoPopUp = value;
    });
  }

  late final _$onTapInButtonAsyncAction =
      AsyncAction('_HomeCtrBase.onTapInButton', context: context);

  @override
  Future onTapInButton() {
    return _$onTapInButtonAsyncAction.run(() => super.onTapInButton());
  }

  late final _$_makeRequestAsyncAction =
      AsyncAction('_HomeCtrBase._makeRequest', context: context);

  @override
  Future<ResultadoApiModel> _makeRequest() {
    return _$_makeRequestAsyncAction.run(() => super._makeRequest());
  }

  late final _$_HomeCtrBaseActionController =
      ActionController(name: '_HomeCtrBase', context: context);

  @override
  void _setLoading(bool value) {
    final _$actionInfo = _$_HomeCtrBaseActionController.startAction(
        name: '_HomeCtrBase._setLoading');
    try {
      return super._setLoading(value);
    } finally {
      _$_HomeCtrBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setIsShowPopUp(bool value) {
    final _$actionInfo = _$_HomeCtrBaseActionController.startAction(
        name: '_HomeCtrBase._setIsShowPopUp');
    try {
      return super._setIsShowPopUp(value);
    } finally {
      _$_HomeCtrBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void closePopUp() {
    final _$actionInfo = _$_HomeCtrBaseActionController.startAction(
        name: '_HomeCtrBase.closePopUp');
    try {
      return super.closePopUp();
    } finally {
      _$_HomeCtrBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setResultadoApi(ResultadoApiModel value) {
    final _$actionInfo = _$_HomeCtrBaseActionController.startAction(
        name: '_HomeCtrBase._setResultadoApi');
    try {
      return super._setResultadoApi(value);
    } finally {
      _$_HomeCtrBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setTipoPopUp(EnumResultadoApiTipos value) {
    final _$actionInfo = _$_HomeCtrBaseActionController.startAction(
        name: '_HomeCtrBase._setTipoPopUp');
    try {
      return super._setTipoPopUp(value);
    } finally {
      _$_HomeCtrBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
isShowPopUp: ${isShowPopUp},
resultadoApi: ${resultadoApi},
tipoPopUp: ${tipoPopUp},
isEnableButton: ${isEnableButton}
    ''';
  }
}
