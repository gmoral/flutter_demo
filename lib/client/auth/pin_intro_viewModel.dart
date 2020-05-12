import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/client/auth/pin_intro_page.dart';

class PinIntroViewModel extends BaseModel<AppState> {
  PinIntroViewModel();

  bool waiting;
  VoidCallback createPinPage;
  VoidCallback signOutPage;

  PinIntroViewModel.build({
    @required this.waiting,
    @required this.createPinPage,
    @required this.signOutPage,
  }) : super(equals: [waiting]);

  @override
  PinIntroViewModel fromStore() => PinIntroViewModel.build(
      signOutPage: () => dispatch(NavigateAction.pushNamedAndRemoveAll("/")),
      waiting: state.waiting,
      createPinPage: () =>
          dispatch(NavigateAction.pushNamedAndRemoveAll("/createPinPage")));
}
