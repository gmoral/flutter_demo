import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:flutterdemo/services/service_locator.dart';
import 'package:flutterdemo/business/app_state_store.dart';
import 'package:flutterdemo/client/login/login_connector.dart';
import 'package:flutterdemo/client/sign_in/sign_in_connector.dart';
import 'package:flutterdemo/client/home/home_connector.dart';
import 'package:flutterdemo/client/auth/pin_intro_connector.dart';
import 'package:flutterdemo/client/auth/pin_entry_connector.dart';
import 'package:flutterdemo/client/auth/pin_confirm_connector.dart';
import 'package:flutterdemo/client/auth/pin_setup_connector.dart';
import 'package:flutterdemo/client/sign_in/pin_sign_in_connector.dart';
import 'package:flutterdemo/global_keys.dart';
import 'package:flutterdemo/services/storage/storage_database_helper.dart';

final dbProvider = DatabaseHelper.instance;

final routes = {
  '/': (BuildContext context) => SignInConnector(),
  '/login': (BuildContext context) => LoginConnector(),
  "/home": (BuildContext context) => HomeConnector(),
  "/pin_intro": (BuildContext context) => PinIntroConnector(),
  "/pin_entry": (BuildContext context) => PinEntryConnector(),
  "/pin_confirm": (BuildContext context) => PinConfirmConnector(),
  "/pin_setup": (BuildContext context) => PinSetupConnector(),
  "/pin_sign_in": (BuildContext context) => PinSignInConnector(),
};

void main() async {
  NavigateAction.setNavigatorKey(navigatorKey);
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  final db = await dbProvider.database;

  runApp(FlutterDemoApp());
}

class FlutterDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        routes: routes,
        navigatorKey: navigatorKey,
      ));
}
