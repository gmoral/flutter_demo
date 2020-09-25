import 'package:flutterdemo/services/api/api.dart';
import 'package:flutterdemo/business/login/models/LoginResponse.dart';

class CognitoAuthService implements AuthService {
  @override
  Future<LoginResponse> login({String username, String password}) async {
    await Future.delayed(Duration(seconds: 4));

    if (username == "test1@test.com") {
      return LoginResponse(userId: 1);
    }

    return LoginResponse(success: false, message: 'Username not found');
  }
}
