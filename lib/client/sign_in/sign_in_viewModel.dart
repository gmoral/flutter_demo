import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';

class SignInViewModel extends BaseModel<AppState> {
  SignInViewModel();

  bool waiting;
  VoidCallback loginPage;

  SignInViewModel.build({
    @required this.waiting,
    @required this.loginPage,
  }) : super(equals: [waiting]);

  @override
  SignInViewModel fromStore() => SignInViewModel.build(
      waiting: state.waiting,
      loginPage: () =>
          dispatch(NavigateAction.pushNamedAndRemoveAll("/login")));
}
