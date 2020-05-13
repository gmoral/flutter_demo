import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';

class PinSetupViewModel extends BaseModel<AppState> {
  PinSetupViewModel();

  bool waiting;
  VoidCallback onNext;

  PinSetupViewModel.build({
    @required this.waiting,
    @required this.onNext,
  }) : super(equals: [waiting]);

  @override
  PinSetupViewModel fromStore() => PinSetupViewModel.build(
      waiting: state.waiting,
      onNext: () => dispatch(NavigateAction.pushNamedAndRemoveAll("/home")));
}
