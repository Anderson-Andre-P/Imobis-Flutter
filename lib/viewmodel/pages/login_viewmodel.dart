import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:mobx/mobx.dart';

import '../../core/helpers/validators/input_validation.dart';

part 'login_viewmodel.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store {
  @action
  void clear() {
    _login = null;
    _password = null;
    _passwordObscure = true;
    _passwordIcon = Icons.visibility_off;
  }

  @observable
  String? _login;
  @action
  void setLogin(String? value) => _login = value;
  @computed
  String? get login => _login;
  @computed
  bool get isLoginValid => _login != null && EmailValidator.validate(_login!);

  @observable
  String? _password;
  @action
  void setPassword(String? value) => _password = value;
  @computed
  String? get password => _password;
  @computed
  bool get isPasswordValid =>
      _password != null && InputValidation.validatePassword(_password);

  @observable
  bool _passwordObscure = true;
  @action
  void setPasswordObscured() {
    _passwordObscure = !_passwordObscure;
    _passwordIcon = _passwordObscure ? Icons.visibility_off : Icons.visibility;
  }

  @computed
  bool get passwordObscure => _passwordObscure;

  @observable
  IconData _passwordIcon = Icons.visibility_off;
  @action
  void setPasswordIcon(IconData value) => _passwordIcon = value;
  @computed
  IconData? get passwordIcon => _passwordIcon;

  @computed
  bool get isFormValid =>
      isLoginValid &&
      isPasswordValid &&
      _login!.isNotEmpty &&
      _password!.isNotEmpty;
}
