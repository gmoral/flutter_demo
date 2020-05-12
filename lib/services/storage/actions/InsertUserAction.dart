import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/services/service_locator.dart';
import 'package:flutterdemo/services/storage/storage_service.dart';
import 'package:flutterdemo/services/storage/model/user.dart';
import 'package:flutterdemo/business/utilities/BarrierAction.dart';

class InsertUserAction extends ReduxAction<AppState> {
  final User user;

  InsertUserAction({this.user}) : assert(user != null);

  @override
  Future<AppState> reduce() async {
    StorageService _service = locator<StorageService>();

    int ret = await _service.insertUser(user);

    if (ret == 1) {
      print('InsertAction ok');
    } else {
      print('InsertAction fail');
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
