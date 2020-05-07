import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/login/models/login_state.dart';
import 'package:flutterdemo/client/login/login_page.dart';
import 'package:flutterdemo/client/login/login_viewModel.dart';
import 'package:flutterdemo/business/app_state_store.dart';

class LoginConnector extends StatelessWidget {
  LoginConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, LoginViewModel>(
        model: LoginViewModel(),
        onWillChange: (LoginViewModel vm) {
          if (vm.loginState.pageState == LoginPageState.NextToHomePage) {
            vm.homePage();
          }
        },
        builder: (BuildContext context, LoginViewModel vm) => LoginPage(
              waiting: vm.waiting,
              loginState: vm.loginState,
              onLogin: vm.onLogin,
              homePage: vm.homePage,
            ));
  }
}
