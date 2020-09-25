import 'package:async_redux/async_redux.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/business/login/actions/LoginAction.dart';
import 'package:flutterdemo/business/login/models/login_state.dart';
import 'package:flutterdemo/services/api/fake_api.dart';
import 'package:flutterdemo/business/auth/models/auth_state.dart';
import 'package:flutterdemo/business/auth/models/auth.dart';
import 'package:mockito/mockito.dart';
import 'package:flutterdemo/business/login/models/LoginResponse.dart';

class AuthServiceMock extends Mock implements FakeAuthService {}

void main() {
  test('Login', () async {

    // Given
    final authService = AuthServiceMock();
    final authStateMock = AuthState(pageState: AuthPageState.Start, auth: Auth(pinEntry: '', pinConfirm: ''));
    final loginStateMock = LoginState(pageState: LoginPageState.Initial);

    final appStateMock = AppState(waiting: false, isLogin: false, isUnitTesting: true, loginState: loginStateMock, authState: authStateMock);

    var storeTester = StoreTester<AppState>(initialState: appStateMock);

    LoginResponse loginResponse = LoginResponse(success: true, userId: 1, message: '' );

    when(authService.login(username: 'test1@test.com', password: 'test1'))
        .thenAnswer((_) async => loginResponse);

    // When
    storeTester
        .dispatch(LoginAction(username: 'test1@test.com', password: 'test1', authService: authService));
    TestInfo<AppState> info = await storeTester.waitUntil(LoginAction);

    // Then
    expect(info.state.isLogin, true);
    expect(info.state.loginState.pageState, LoginPageState.NextToHomePage);
  });
}
