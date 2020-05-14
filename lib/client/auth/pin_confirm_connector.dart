import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/client/auth/pin_confirm_viewModel.dart';
import 'package:flutterdemo/client/auth/pin_confirm_page.dart';
import 'package:flutterdemo/business/auth/models/auth_state.dart';

class PinConfirmConnector extends StatelessWidget {
  PinConfirmConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PinConfirmViewModel>(
      model: PinConfirmViewModel(),
      onInitialBuild: (PinConfirmViewModel vm) {},
      onWillChange: (PinConfirmViewModel vm) {
        if (vm.authState.pageState == AuthPageState.PinConfirmOK) {
          String pin = vm.authState.auth.pinEntry;
          print('Create pin aca : $pin');
          vm.createPin(pin);
        }

        if (vm.authState.pageState == AuthPageState.PinConfirmFail) {
          print('PinConfirmFail');
        }

        if (vm.authState.pageState == AuthPageState.CreatePinOK) {
          print('next');
          vm.onNext();
        }

        if (vm.authState.pageState == AuthPageState.CreatePinFail) {
          print('CreatePinFail');
        }
      },
      builder: (BuildContext context, PinConfirmViewModel vm) => PinConfirmPage(
        onNext: vm.onNext,
        onPop: vm.onPop,
        onCheckPinConfirm: vm.onCheckPinConfirm,
        authState: vm.authState,
        createPin: vm.createPin,
      ),
    );
  }
}
