import 'package:flutterdemo/business/login/models/User.dart';
import 'package:flutterdemo/business/login/models/LoginResponse.dart';

abstract class Api {
  Future<LoginResponse> login({String username, String password});
  Future<User> getUser(int userId);
}
