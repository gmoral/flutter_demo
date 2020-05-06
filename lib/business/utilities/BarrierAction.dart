import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';

/// Actions that extend [BarrierAction] show a modal barrier while their async processes run.
class BarrierAction extends ReduxAction<AppState> {
  final bool waiting;

  BarrierAction(this.waiting);

  @override
  AppState reduce() {
    return state.copyWith(waiting: waiting);
  }
}
