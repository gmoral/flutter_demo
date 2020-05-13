import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';

class PinSignInViewModel extends BaseModel<AppState> {
  PinSignInViewModel();

  bool waiting;
  VoidCallback onNext;

  PinSignInViewModel.build({
    @required this.waiting,
    @required this.onNext,
  }) : super(equals: [waiting]);

  @override
  PinSignInViewModel fromStore() => PinSignInViewModel.build(
      waiting: state.waiting,
      onNext: () => dispatch(NavigateAction.pushNamedAndRemoveAll("/home")));
}
