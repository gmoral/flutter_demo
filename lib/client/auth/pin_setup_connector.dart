import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/client/auth/pin_setup_viewModel.dart';
import 'package:flutterdemo/client/auth/pin_setup_page.dart';

class PinSetupConnector extends StatelessWidget {
  PinSetupConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PinSetupViewModel>(
      model: PinSetupViewModel(),
      builder: (BuildContext context, PinSetupViewModel vm) => PinSetupPage(
        onNext: vm.onNext,
      ),
    );
  }
}
