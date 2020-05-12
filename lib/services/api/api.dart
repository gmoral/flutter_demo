import 'package:flutterdemo/business/login/models/LoginResponse.dart';

abstract class Api {
  Future<LoginResponse> login({String username, String password});
}
