import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';

class LogoutAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    dispatch(NavigateAction.pushNamedAndRemoveAll("/"));
    return state;
  }
}
