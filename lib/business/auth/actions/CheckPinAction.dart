import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/business/auth/models/auth_state.dart';

class CheckPinAction extends ReduxAction<AppState> {
  final String pinEnter;
  final String pinCreated;

  CheckPinAction({this.pinEnter, this.pinCreated})
      : assert(pinEnter != null, pinCreated != null);

  @override
  Future<AppState> reduce() async {
    if (pinEnter == pinCreated) {
      return state.copyWith(
          authState: state.authState.copyWith(pageState: AuthPageState.SignIn));
    }

    return state.copyWith(
        authState:
            state.authState.copyWith(pageState: AuthPageState.SignInFail));
  }
}
