import 'package:flutterdemo/services/api/Api.dart';
import 'package:flutterdemo/services/api/FakeApi.dart';
import 'package:flutterdemo/services/api/GraphQLAPI.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

const bool USE_FAKE_IMPLEMENTATION = true;

void setupLocator() {
  locator.registerLazySingleton<Api>(
      () => USE_FAKE_IMPLEMENTATION ? FakeApi() : GraphQLAPI());
}
