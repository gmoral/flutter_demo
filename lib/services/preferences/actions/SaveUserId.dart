import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/services/service_locator.dart';
import 'package:flutterdemo/services/preferences/shared_service.dart';
import 'package:flutterdemo/business/utilities/BarrierAction.dart';

class SaveUserIdAction extends ReduxAction<AppState> {
  final int userId;

  SaveUserIdAction({this.userId}) : assert(userId != null);

  @override
  Future<AppState> reduce() async {
    SharedService _preference = locator<SharedService>();

    await _preference.saveUserId(userId);

    return state;
  }

  // This adds a modal barrier while the async process is running.
  void before() => dispatch(BarrierAction(true));

  // This removes the modal barrier when the async process ends,
  // even if there was some error in the process.
  // You can test it by turning off the internet connection.
  void after() => dispatch(BarrierAction(false));
}
