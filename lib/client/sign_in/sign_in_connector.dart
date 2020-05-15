import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/auth/models/auth_state.dart';
import 'package:flutterdemo/client/sign_in/sign_in_page.dart';
import 'package:flutterdemo/client/sign_in/sign_in_viewModel.dart';
import 'package:flutterdemo/business/app_state_store.dart';

class SignInConnector extends StatelessWidget {
  SignInConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SignInViewModel>(
        model: SignInViewModel(),
        onInitialBuild: (SignInViewModel vm) {
          vm.checkAuthState();
        },
        onWillChange: (SignInViewModel vm) {
          if (vm.authState.pageState == AuthPageState.SignIn) {
            vm.signInWithPin();
          }
        },
        builder: (BuildContext context, SignInViewModel vm) => SignInPage(
              waiting: vm.waiting,
              loginPage: vm.loginPage,
              checkAuthState: vm.checkAuthState,
              signInWithPin: vm.signInWithPin,
              authState: vm.authState,
            ));
  }
}
