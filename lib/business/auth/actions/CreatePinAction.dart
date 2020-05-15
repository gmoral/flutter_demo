import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/business/auth/models/auth_state.dart';
import 'package:flutterdemo/services/secure/SecItem.dart';
import 'package:flutterdemo/services/service_locator.dart';
import 'package:flutterdemo/services/secure/secure_service.dart';

class CreatePinAction extends ReduxAction<AppState> {
  final String pin;

  CreatePinAction({this.pin}) : assert(pin != null);

  @override
  Future<AppState> reduce() async {
    SecureService _secure = locator<SecureService>();

    SecItem item = SecItem('JackPin', pin);

    await _secure.addNewItem(item);

    String checkPin = await _secure.getPin('JackPin');

    if (checkPin == pin) {
      return state.copyWith(
          authState:
              state.authState.copyWith(pageState: AuthPageState.CreatePinOK));
    }

    return state.copyWith(
        authState:
            state.authState.copyWith(pageState: AuthPageState.CreatePinFail));
  }
}
