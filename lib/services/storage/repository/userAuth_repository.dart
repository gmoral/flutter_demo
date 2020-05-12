import 'package:flutterdemo/services/storage/dao/userAuth_dao.dart';
import 'package:flutterdemo/services/storage/model/userAuth.dart';

class UserAuthRepository {
  final userAuthDao = UserAuthDao();

  Future getAllUserAuth({String query}) =>
      userAuthDao.getUserAuth(query: query);

  Future<int> insertUserAuth(UserAuth userAuth) =>
      userAuthDao.createUserAuth(userAuth);

  Future updateUserAuth(UserAuth userAuth) =>
      userAuthDao.updateUserAuth(userAuth);

  Future deleteUserAuthById(int userId) => userAuthDao.deleteUserAuth(userId);

  Future deleteAllUserAuth() => userAuthDao.deleteAllUserAuth();
}
