import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/client/auth/pin_retry_viewModel.dart';
import 'package:flutterdemo/client/auth/pin_retry_page.dart';

class PinRetryConnector extends StatelessWidget {
  PinRetryConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PinRetryViewModel>(
      model: PinRetryViewModel(),
      builder: (BuildContext context, PinRetryViewModel vm) => PinRetryPage(
        onNext: vm.onNext,
        onPop: vm.onPop,
      ),
    );
  }
}
