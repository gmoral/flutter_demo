import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';

import 'package:flutterdemo/client/auth/pin_intro_page.dart';
import 'package:flutterdemo/client/auth/pin_intro_viewModel.dart';
import 'package:flutterdemo/business/app_state_store.dart';

class PinIntroConnector extends StatelessWidget {
  PinIntroConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PinIntroViewModel>(
        model: PinIntroViewModel(),
        onInitialBuild: (PinIntroViewModel vm) {},
        onWillChange: (PinIntroViewModel vm) {},
        builder: (BuildContext context, PinIntroViewModel vm) => PinIntroPage(
              signOutPage: vm.signOutPage,
              waiting: vm.waiting,
              createPinPage: vm.createPinPage,
            ));
  }
}
