import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';

class PinEntryViewModel extends BaseModel<AppState> {
  PinEntryViewModel();

  bool waiting;
  VoidCallback onPinEntry;
  VoidCallback onPop;

  PinEntryViewModel.build(
      {@required this.waiting, @required this.onPinEntry, this.onPop});

  @override
  PinEntryViewModel fromStore() => PinEntryViewModel.build(
      onPop: () => dispatch(NavigateAction.pop()),
      waiting: state.waiting,
      onPinEntry: () =>
          dispatch(NavigateAction.pushNamedAndRemoveAll("/retryPinPage")));
}
