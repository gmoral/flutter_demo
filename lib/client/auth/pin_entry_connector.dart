import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/client/auth/pin_entry_viewModel.dart';
import 'package:flutterdemo/client/auth/pin_entry_page.dart';

class PinEntryConnector extends StatelessWidget {
  PinEntryConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PinEntryViewModel>(
      model: PinEntryViewModel(),
      builder: (BuildContext context, PinEntryViewModel vm) => PinEntryPage(
        onPinRetry: vm.onPinRetry,
        onPop: vm.onPop,
      ),
    );
  }
}
