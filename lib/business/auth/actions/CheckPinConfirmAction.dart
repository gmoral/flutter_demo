import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/business/auth/models/auth.dart';
import 'package:flutterdemo/business/auth/models/auth_state.dart';

class CheckPinConfirmAction extends ReduxAction<AppState> {
  final String pinConfirm;

  CheckPinConfirmAction({this.pinConfirm}) : assert(pinConfirm != null);

  @override
  Future<AppState> reduce() async {
    if (state.authState.auth.pinEntry == pinConfirm) {
      return state.copyWith(
          authState: state.authState.copyWith(
              pageState: AuthPageState.PinConfirmOK,
              auth: Auth(pinEntry: pinConfirm, pinConfirm: pinConfirm)));
    }

    return state.copyWith(
        authState:
            state.authState.copyWith(pageState: AuthPageState.PinConfirmFail));
  }
}
