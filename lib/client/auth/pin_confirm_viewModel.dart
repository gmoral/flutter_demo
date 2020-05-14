import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/business/auth/models/auth_state.dart';
import 'package:flutterdemo/business/auth/actions/CheckPinConfirmAction.dart';
import 'package:flutterdemo/business/auth/actions/CreatePinAction.dart';

class PinConfirmViewModel extends BaseModel<AppState> {
  PinConfirmViewModel();

  bool waiting;
  VoidCallback onNext;
  VoidCallback onPop;
  Function(String) onCheckPinConfirm;
  Function(String) createPin;
  AuthState authState;

  PinConfirmViewModel.build(
      {@required this.waiting,
      @required this.onNext,
      @required this.onPop,
      @required this.onCheckPinConfirm,
      @required this.createPin,
      @required this.authState})
      : super(equals: [waiting, authState]);

  @override
  PinConfirmViewModel fromStore() => PinConfirmViewModel.build(
      createPin: (aPin) => dispatch(CreatePinAction(pin: aPin)),
      onCheckPinConfirm: (pin) =>
          dispatch(CheckPinConfirmAction(pinConfirm: pin)),
      authState: state.authState,
      onPop: () => dispatch(NavigateAction.pop()),
      waiting: state.waiting,
      onNext: () => dispatch(NavigateAction.pushNamed("/pin_setup")));
}
