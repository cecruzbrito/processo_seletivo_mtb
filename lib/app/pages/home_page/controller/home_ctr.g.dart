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
  String toString() {
    return '''
isLoading: ${isLoading},
isEnableButton: ${isEnableButton}
    ''';
  }
}
