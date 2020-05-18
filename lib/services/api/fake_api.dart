import 'package:flutter_cognito_plugin/flutter_cognito_plugin.dart';
import 'package:flutterdemo/services/api/api.dart';
import 'package:flutterdemo/business/login/models/LoginResponse.dart';

class FakeApi implements Api {
  @override
  Future<LoginResponse> login({String username, String password}) async {
    await Future.delayed(Duration(seconds: 4));

    if (username == "test1@test.com" && password == 'test1') {
      return LoginResponse(userId: 1, signInState: SignInState.DONE);
    }

    return LoginResponse(
        userId: 1,
        signInState: SignInState.UNKNOWN,
        message: 'Username not found');
  }
}
