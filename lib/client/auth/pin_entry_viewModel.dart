import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/business/auth/models/auth_state.dart';
import 'package:flutterdemo/business/auth/actions/CheckPinEntryAction.dart';

class PinEntryViewModel extends BaseModel<AppState> {
  PinEntryViewModel();

  bool waiting;
  VoidCallback onNext;
  Function(String) onCheckPinEntry;
  VoidCallback onPop;
  AuthState authState;

  PinEntryViewModel.build(
      {@required this.waiting,
      @required this.onNext,
      @required this.onCheckPinEntry,
      @required this.onPop,
      @required this.authState})
      : super(equals: [waiting, authState]);

  @override
  PinEntryViewModel fromStore() => PinEntryViewModel.build(
      authState: state.authState,
      onPop: () => dispatch(NavigateAction.pop()),
      waiting: state.waiting,
      onCheckPinEntry: (pin) => dispatch(CheckPinEntryAction(pinEntry: pin)),
      onNext: () => dispatch(NavigateAction.pushNamed("/pin_confirm")));
}
