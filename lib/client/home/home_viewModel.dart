import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/business/home/actions/LogoutAction.dart';

class HomeViewModel extends BaseModel<AppState> {
  HomeViewModel();

  VoidCallback onLogout;

  HomeViewModel.build({@required this.onLogout});

  @override
  HomeViewModel fromStore() =>
      HomeViewModel.build(onLogout: () => dispatch(LogoutAction()));
}
