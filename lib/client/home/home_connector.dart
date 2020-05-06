import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/client/home/home_viewModel.dart';
import 'package:flutterdemo/client/home/home_page.dart';

class HomeConnector extends StatelessWidget {
  HomeConnector({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomeViewModel>(
      model: HomeViewModel(),
      builder: (BuildContext context, HomeViewModel vm) =>
          HomePage(onLogout: vm.onLogout),
    );
  }
}
