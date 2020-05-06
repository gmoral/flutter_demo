import 'package:meta/meta.dart';

enum LoginPageState {
  Initial,
  EmailError,
  PasswordError,
  EmailPasswordError,
  CallLoginAction,
  NextToHomePage,
  NetworkError
}

@immutable
class LoginState {
  LoginState({
    @required this.pageState,
  });

  final LoginPageState pageState;

  factory LoginState.initial() {
    return LoginState(
      pageState: LoginPageState.Initial,
    );
  }

  LoginState copyWith({
    LoginPageState pageState,
  }) {
    return LoginState(
      pageState: pageState ?? this.pageState,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginState &&
          runtimeType == other.runtimeType &&
          pageState == other.pageState;

  @override
  int get hashCode => pageState.hashCode;
}
