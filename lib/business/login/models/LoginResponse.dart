import 'package:flutter_cognito_plugin/flutter_cognito_plugin.dart';

class LoginResponse {
  final SignInState signInState;
  final int userId;
  final String message;
  LoginResponse({
    this.signInState = SignInState.UNKNOWN,
    this.userId,
    this.message,
  });
}
