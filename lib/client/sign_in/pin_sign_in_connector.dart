import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';

import 'package:flutterdemo/client/sign_in/pin_sign_in_page.dart';
import 'package:flutterdemo/client/sign_in/pin_sign_in_viewModel.dart';
import 'package:flutterdemo/business/app_state_store.dart';

class PinSignInConnector extends StatelessWidget {
  PinSignInConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PinSignInViewModel>(
        model: PinSignInViewModel(),
        onInitialBuild: (PinSignInViewModel vm) {},
        onWillChange: (PinSignInViewModel vm) {},
        builder: (BuildContext context, PinSignInViewModel vm) => PinSignInPage(
              waiting: vm.waiting,
              onNext: vm.onNext,
            ));
  }
}
