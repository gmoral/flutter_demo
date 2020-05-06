import 'package:flutterdemo/services/api/Api.dart';
import 'package:flutterdemo/business/login/models/User.dart';
import 'package:flutterdemo/business/login/models/LoginResponse.dart';

class FakeApi implements Api {
  @override
  Future<LoginResponse> login({String username, String password}) async {
    await Future.delayed(Duration(seconds: 4));

    if (username == "test1@test.com" && password == 'test1') {
      return LoginResponse(userId: 1);
    }

    return LoginResponse(success: false, message: 'Username not found');
  }

  @override
  Future<User> getUser(int userId) async {
    await Future.delayed(Duration(seconds: 4));

    if (userId == 1) {
      return User(name: 'test', phoneNumber: '541149502000');
    }

    return null;
  }
}
