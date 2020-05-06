import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/login/models/login_state.dart';
import 'package:meta/meta.dart';

var store = Store<AppState>(
  initialState: AppState.initial(),
);

/// The app state
class AppState {
  AppState({
    @required this.waiting,
    @required this.isLogin,
    @required this.isUnitTesting,
    @required this.loginState,
  });

  final bool waiting;
  final bool isLogin;
  final bool isUnitTesting;
  final LoginState loginState;

  factory AppState.initial() {
    return AppState(
      waiting: false,
      isLogin: false,
      isUnitTesting: false,
      loginState: LoginState.initial(),
    );
  }

  AppState copyWith({
    bool waiting,
    bool isLogin,
    bool isUnitTesting,
    LoginState loginState,
  }) {
    return AppState(
      waiting: waiting ?? this.waiting,
      isLogin: isLogin ?? this.isLogin,
      isUnitTesting: isUnitTesting ?? this.isUnitTesting,
      loginState: loginState ?? this.loginState,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          waiting == other.waiting &&
          isLogin == other.isLogin &&
          isUnitTesting == other.isUnitTesting &&
          loginState == other.loginState;

  @override
  int get hashCode =>
      waiting.hashCode ^
      isLogin.hashCode ^
      isUnitTesting.hashCode ^
      loginState.hashCode;
}

List<AppState> states;
