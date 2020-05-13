import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';

class PinRetryViewModel extends BaseModel<AppState> {
  PinRetryViewModel();

  bool waiting;
  VoidCallback onNext;
  VoidCallback onPop;

  PinRetryViewModel.build(
      {@required this.waiting, @required this.onNext, this.onPop});

  @override
  PinRetryViewModel fromStore() => PinRetryViewModel.build(
      onPop: () => dispatch(NavigateAction.pop()),
      waiting: state.waiting,
      onNext: () => dispatch(NavigateAction.pushNamed("/")));
}
