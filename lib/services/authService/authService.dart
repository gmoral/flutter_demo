import 'package:flutterdemo/business/login/models/LoginResponse.dart';

abstract class AuthService {
  Future<LoginResponse> login({String username, String password});
}
