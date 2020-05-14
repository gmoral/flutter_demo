import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/business/auth/models/auth.dart';
import 'package:flutterdemo/business/auth/models/auth_state.dart';

class CheckPinEntryAction extends ReduxAction<AppState> {
  final String pinEntry;

  CheckPinEntryAction({this.pinEntry}) : assert(pinEntry != null);

  @override
  Future<AppState> reduce() async {
    return state.copyWith(
        authState: state.authState.copyWith(
            pageState: AuthPageState.PinEntryOK,
            auth: Auth(pinEntry: pinEntry)));
  }
}
