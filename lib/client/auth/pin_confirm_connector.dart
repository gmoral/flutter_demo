import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/client/auth/pin_confirm_viewModel.dart';
import 'package:flutterdemo/client/auth/pin_confirm_page.dart';

class PinConfirmConnector extends StatelessWidget {
  PinConfirmConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PinConfirmViewModel>(
      model: PinConfirmViewModel(),
      builder: (BuildContext context, PinConfirmViewModel vm) => PinConfirmPage(
        onNext: vm.onNext,
        onPop: vm.onPop,
      ),
    );
  }
}
