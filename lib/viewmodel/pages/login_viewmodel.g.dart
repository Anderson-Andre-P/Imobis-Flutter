// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginViewModel on _LoginViewModelBase, Store {
  Computed<String?>? _$loginComputed;

  @override
  String? get login => (_$loginComputed ??= Computed<String?>(() => super.login,
          name: '_LoginViewModelBase.login'))
      .value;
  Computed<bool>? _$isLoginValidComputed;

  @override
  bool get isLoginValid =>
      (_$isLoginValidComputed ??= Computed<bool>(() => super.isLoginValid,
              name: '_LoginViewModelBase.isLoginValid'))
          .value;
  Computed<String?>? _$passwordComputed;

  @override
  String? get password =>
      (_$passwordComputed ??= Computed<String?>(() => super.password,
              name: '_LoginViewModelBase.password'))
          .value;
  Computed<bool>? _$isPasswordValidComputed;

  @override
  bool get isPasswordValid =>
      (_$isPasswordValidComputed ??= Computed<bool>(() => super.isPasswordValid,
              name: '_LoginViewModelBase.isPasswordValid'))
          .value;
  Computed<bool>? _$passwordObscureComputed;

  @override
  bool get passwordObscure =>
      (_$passwordObscureComputed ??= Computed<bool>(() => super.passwordObscure,
              name: '_LoginViewModelBase.passwordObscure'))
          .value;
  Computed<IconData?>? _$passwordIconComputed;

  @override
  IconData? get passwordIcon =>
      (_$passwordIconComputed ??= Computed<IconData?>(() => super.passwordIcon,
              name: '_LoginViewModelBase.passwordIcon'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_LoginViewModelBase.isFormValid'))
          .value;

  late final _$_loginAtom =
      Atom(name: '_LoginViewModelBase._login', context: context);

  @override
  String? get _login {
    _$_loginAtom.reportRead();
    return super._login;
  }

  @override
  set _login(String? value) {
    _$_loginAtom.reportWrite(value, super._login, () {
      super._login = value;
    });
  }

  late final _$_passwordAtom =
      Atom(name: '_LoginViewModelBase._password', context: context);

  @override
  String? get _password {
    _$_passwordAtom.reportRead();
    return super._password;
  }

  @override
  set _password(String? value) {
    _$_passwordAtom.reportWrite(value, super._password, () {
      super._password = value;
    });
  }

  late final _$_passwordObscureAtom =
      Atom(name: '_LoginViewModelBase._passwordObscure', context: context);

  @override
  bool get _passwordObscure {
    _$_passwordObscureAtom.reportRead();
    return super._passwordObscure;
  }

  @override
  set _passwordObscure(bool value) {
    _$_passwordObscureAtom.reportWrite(value, super._passwordObscure, () {
      super._passwordObscure = value;
    });
  }

  late final _$_passwordIconAtom =
      Atom(name: '_LoginViewModelBase._passwordIcon', context: context);

  @override
  IconData get _passwordIcon {
    _$_passwordIconAtom.reportRead();
    return super._passwordIcon;
  }

  @override
  set _passwordIcon(IconData value) {
    _$_passwordIconAtom.reportWrite(value, super._passwordIcon, () {
      super._passwordIcon = value;
    });
  }

  late final _$_LoginViewModelBaseActionController =
      ActionController(name: '_LoginViewModelBase', context: context);

  @override
  void clear() {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction(
        name: '_LoginViewModelBase.clear');
    try {
      return super.clear();
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLogin(String? value) {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction(
        name: '_LoginViewModelBase.setLogin');
    try {
      return super.setLogin(value);
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String? value) {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction(
        name: '_LoginViewModelBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPasswordObscured() {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction(
        name: '_LoginViewModelBase.setPasswordObscured');
    try {
      return super.setPasswordObscured();
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPasswordIcon(IconData value) {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction(
        name: '_LoginViewModelBase.setPasswordIcon');
    try {
      return super.setPasswordIcon(value);
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
login: ${login},
isLoginValid: ${isLoginValid},
password: ${password},
isPasswordValid: ${isPasswordValid},
passwordObscure: ${passwordObscure},
passwordIcon: ${passwordIcon},
isFormValid: ${isFormValid}
    ''';
  }
}
