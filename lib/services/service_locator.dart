import 'package:flutterdemo/services/api/api.dart';
import 'package:flutterdemo/services/api/fake_api.dart';
import 'package:flutterdemo/services/api/graphQL_api.dart';
import 'package:flutterdemo/services/storage/storage_service.dart';
import 'package:flutterdemo/services/storage/storage_service_database.dart';
import 'package:flutterdemo/services/sharedPreferences/shared_service.dart';
import 'package:flutterdemo/services/sharedPreferences/shared_service_preference.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

const bool USE_FAKE_IMPLEMENTATION = true;
const bool USE_FAKE_DB = true;

void setupLocator() {
  locator.registerLazySingleton<Api>(
      () => USE_FAKE_IMPLEMENTATION ? FakeApi() : GraphQLAPI());
  locator.registerLazySingleton<StorageService>(() => StorageServiceDatabase());
  locator.registerLazySingleton<SharedService>(() => SharedServicePreference());
}
