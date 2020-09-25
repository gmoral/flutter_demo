import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/business/login/models/LoginResponse.dart';
import 'package:flutterdemo/business/login/models/login_state.dart';
import 'package:flutterdemo/services/service_locator.dart';
import 'package:flutterdemo/services/authService/authService.dart';
import 'package:flutterdemo/business/utilities/BarrierAction.dart';

class LoginAction extends ReduxAction<AppState> {
  LoginAction({
    this.username,
    this.password,
    AuthService authService,
  })  : assert(username != null),
        assert(password != null),
        auth = authService ?? locator<AuthService>();

  final String username;
  final String password;
  final AuthService auth;

  @override
  Future<AppState> reduce() async {
    LoginResponse loginResponse =
        await auth.login(username: username, password: password);

    if (loginResponse.success) {
      return state.copyWith(
          isLogin: true,
          loginState: state.loginState
              .copyWith(pageState: LoginPageState.NextToHomePage));
    }

    return state;
  }

  // This adds a modal barrier while the async process is running.
  void before() => dispatch(BarrierAction(true));

  // This removes the modal barrier when the async process ends,
  // even if there was some error in the process.
  // You can test it by turning off the internet connection.
  void after() => dispatch(BarrierAction(false));
}
