import 'package:flutterdemo/services/api/api.dart';
import 'package:flutterdemo/business/login/models/LoginResponse.dart';
import 'package:flutter_cognito_plugin/flutter_cognito_plugin.dart';

class GraphQLAPI implements Api {
  @override
  Future<LoginResponse> login({String username, String password}) async {
    SignInResult signInResult = await Cognito.signIn(username, password);

    return LoginResponse(
        userId: 1,
        signInState: signInResult.signInState,
        message: signInResult.toString());
  }
}
