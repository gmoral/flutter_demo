import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';

class PinConfirmViewModel extends BaseModel<AppState> {
  PinConfirmViewModel();

  bool waiting;
  VoidCallback onNext;
  VoidCallback onPop;

  PinConfirmViewModel.build(
      {@required this.waiting, @required this.onNext, this.onPop});

  @override
  PinConfirmViewModel fromStore() => PinConfirmViewModel.build(
      onPop: () => dispatch(NavigateAction.pop()),
      waiting: state.waiting,
      onNext: () => dispatch(NavigateAction.pushNamed("/pin_setup")));
}
