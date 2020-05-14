import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/business/auth/models/auth_state.dart';
import 'package:flutterdemo/business/auth/actions/CheckAuthAction.dart';

class SignInViewModel extends BaseModel<AppState> {
  SignInViewModel();

  bool waiting;
  VoidCallback loginPage;
  VoidCallback checkAuthState;
  VoidCallback signInWithPin;
  AuthState authState;

  SignInViewModel.build({
    @required this.waiting,
    @required this.loginPage,
    @required this.checkAuthState,
    @required this.signInWithPin,
    @required this.authState,
  }) : super(equals: [waiting, authState]);

  @override
  SignInViewModel fromStore() => SignInViewModel.build(
      signInWithPin: () =>
          dispatch(NavigateAction.pushNamedAndRemoveAll("/pin_sign_in")),
      waiting: state.waiting,
      checkAuthState: () => dispatch(CheckAuthAction()),
      authState: state.authState,
      loginPage: () =>
          dispatch(NavigateAction.pushNamedAndRemoveAll("/login")));
}
