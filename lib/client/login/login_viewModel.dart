import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/business/login/actions/LoginAction.dart';
import 'package:flutterdemo/business/login/models/login_state.dart';

class LoginViewModel extends BaseModel<AppState> {
  LoginViewModel();

  bool waiting;
  LoginState loginState;
  Function(String, String) onLogin;
  VoidCallback homePage;

  LoginViewModel.build({
    @required this.onLogin,
    @required this.waiting,
    @required this.loginState,
    @required this.homePage,
  }) : super(equals: [waiting, loginState]);

  @override
  LoginViewModel fromStore() => LoginViewModel.build(

      /// If there is any waiting, 'state.wait.isWaiting' will return true.
      waiting: state.waiting,
      homePage: () =>
          dispatch(NavigateAction.pushNamedAndRemoveAll("/introPin")),
      loginState: state.loginState,
      onLogin: (username, password) =>
          dispatch(LoginAction(username: username, password: password)));
}
