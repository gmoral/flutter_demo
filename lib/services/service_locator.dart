import 'package:flutterdemo/services/authService/authService.dart';
import 'package:flutterdemo/services/authService/fakeAuthService.dart';
import 'package:flutterdemo/services/authService/cognitoAuthService.dart';
import 'package:flutterdemo/services/storage/storage_service.dart';
import 'package:flutterdemo/services/storage/storage_service_database.dart';
import 'package:flutterdemo/services/preferences/shared_service.dart';
import 'package:flutterdemo/services/preferences/shared_service_preference.dart';
import 'package:flutterdemo/services/secure/secure_service.dart';
import 'package:flutterdemo/services/secure/secure_service_data.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

const bool USE_FAKE_IMPLEMENTATION = true;
const bool USE_FAKE_DB = true;

void setupLocator() {
  locator.registerLazySingleton<AuthService>(
      () => USE_FAKE_IMPLEMENTATION ? FakeAuthService() : CognitoAuthService());
  locator.registerLazySingleton<StorageService>(() => StorageServiceDatabase());
  locator.registerLazySingleton<SharedService>(() => SharedServicePreference());
  locator.registerLazySingleton<SecureService>(() => SecureServiceData());
}
