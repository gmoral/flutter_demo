import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/services/service_locator.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/client/login/login_connector.dart';
import 'package:flutterdemo/client/home/home_connector.dart';
import 'package:flutterdemo/global_keys.dart';

final routes = {
  '/': (BuildContext context) => LoginConnector(),
  "/home": (BuildContext context) => HomeConnector(),
};

void main() async {
  NavigateAction.setNavigatorKey(navigatorKey);
  setupLocator();
  runApp(UnitTestingApp());
}

class UnitTestingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        routes: routes,
        navigatorKey: navigatorKey,
      ));
}
