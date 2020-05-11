import 'package:flutterdemo/services/storage/model/user.dart';
import 'package:flutterdemo/services/storage/model/userAuth.dart';

abstract class StorageService {
  /// UserRepository
  Future<int> insertUser(User user);
  Future<List<User>> getAllUsers({String query});
  Future<int> updateUser(User user);
  Future<int> deleteUserById(int userId);
  Future<int> deleteAllUsers();

  /// UserAuth Repository
  Future<int> insertUserAuth(UserAuth userAuth);
  Future<List<UserAuth>> getAllUserAuth({String query});
  Future<int> updateUserAuth(UserAuth userAuth);
  Future<int> deleteUserAuthById(int userId);
  Future<int> deleteAllUserAuth();
}
