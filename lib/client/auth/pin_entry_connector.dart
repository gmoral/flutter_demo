import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/business/auth/models/auth_state.dart';

import 'package:flutterdemo/client/auth/pin_entry_viewModel.dart';
import 'package:flutterdemo/client/auth/pin_entry_page.dart';

class PinEntryConnector extends StatelessWidget {
  PinEntryConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PinEntryViewModel>(
      model: PinEntryViewModel(),
      onInitialBuild: (PinEntryViewModel vm) {},
      onWillChange: (PinEntryViewModel vm) {
        print('onWillChange');
        if (vm.authState.pageState == AuthPageState.PinEntryOK) {
          vm.onNext();
        }
      },
      builder: (BuildContext context, PinEntryViewModel vm) => PinEntryPage(
        onNext: vm.onNext,
        onPop: vm.onPop,
        authState: vm.authState,
        onCheckPinEntry: vm.onCheckPinEntry,
      ),
    );
  }
}
