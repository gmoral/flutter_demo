import 'package:flutterdemo/services/storage/dao/user_dao.dart';
import 'package:flutterdemo/services/storage/model/user.dart';

class UserRepository {
  final userDao = UserDao();

  Future getAllUsers({String query}) => userDao.getUsers(query: query);

  Future<int> insertUser(User user) => userDao.createUser(user);

  Future updateUser(User user) => userDao.updateUser(user);

  Future deleteUserById(int userId) => userDao.deleteUser(userId);

  Future deleteAllUsers() => userDao.deleteAllUser();
}
