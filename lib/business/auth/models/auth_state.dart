import 'package:meta/meta.dart';
import 'package:flutterdemo/business/auth/models/auth.dart';

enum AuthPageState {
  Start,
  SignIn,
  SignInFail,
  CreatePinOK,
  CreatePinFail,
  PinEntryOK,
  PinEntryFail,
  PinConfirmOK,
  PinConfirmFail,
}

@immutable
class AuthState {
  final AuthPageState pageState;
  final Auth auth;

  AuthState({
    @required this.pageState,
    @required this.auth,
  });

  factory AuthState.initial() {
    return AuthState(
      pageState: AuthPageState.Start,
      auth: Auth(pinEntry: '', pinConfirm: ''),
    );
  }

  AuthState copyWith({
    AuthPageState pageState,
    Auth auth,
  }) {
    return AuthState(
      pageState: pageState ?? this.pageState,
      auth: auth ?? this.auth,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthState &&
          runtimeType == other.runtimeType &&
          pageState == other.pageState &&
          auth == other.auth;

  @override
  int get hashCode => pageState.hashCode ^ auth.hashCode;
}
