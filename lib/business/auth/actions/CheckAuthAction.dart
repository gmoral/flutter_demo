import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/business/auth/models/auth_state.dart';

import 'package:flutterdemo/services/service_locator.dart';
import 'package:flutterdemo/services/secure/secure_service.dart';

class CheckAuthAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    SecureService _secure = locator<SecureService>();

    // await _secure.deleteAll();

    String checkPin = await _secure.getPin('JackPin');

    if (checkPin.length > 0) {
      return state.copyWith(
          authState: state.authState.copyWith(pageState: AuthPageState.SignIn));
    }

    return state.copyWith(
        authState: state.authState.copyWith(pageState: AuthPageState.Start));
  }
}
