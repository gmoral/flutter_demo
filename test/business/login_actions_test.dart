import 'package:async_redux/async_redux.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/business/login/actions/LoginAction.dart';
import 'package:flutterdemo/services/service_locator.dart';
import 'package:flutterdemo/business/login/models/login_state.dart';

void main() {
  test('Login', () async {
    states = [];

    var storeTester = StoreTester<AppState>(initialState: AppState.initial());

    /// Set isUnitTesting: true when run unit testing.
    storeTester.state.copyWith(isUnitTesting: true);

    setupLocator();

    expect(storeTester.state.isLogin, false);

    storeTester
        .dispatch(LoginAction(username: 'test1@test.com', password: 'test1'));

    TestInfo<AppState> info = await storeTester.waitUntil(LoginAction);

    expect(info.state.waiting, false);
    expect(info.state.loginState.pageState, LoginPageState.NextToHomePage);
  });
}
