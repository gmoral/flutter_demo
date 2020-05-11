import 'storage_service.dart';

import 'package:flutterdemo/services/storage/repository/user_repository.dart';
import 'package:flutterdemo/services/storage/repository/userAuth_repository.dart';

import 'package:flutterdemo/services/storage/model/user.dart';
import 'package:flutterdemo/services/storage/model/userAuth.dart';

class StorageServiceDatabase implements StorageService {
  final userRepository = UserRepository();
  final userAuthRepository = UserAuthRepository();

  /// UserRepository
  @override
  Future<int> insertUser(User user) async {
    return userRepository.insertUser(user);
  }

  Future<List<User>> getAllUsers({String query}) {
    return userRepository.getAllUsers(query: query);
  }

  Future<int> updateUser(User user) {
    return userRepository.updateUser(user);
  }

  Future<int> deleteUserById(int userId) {
    return userRepository.deleteUserById(userId);
  }

  Future<int> deleteAllUsers() {
    return userRepository.deleteAllUsers();
  }

  /// UserAuth Repository
  @override
  Future<int> insertUserAuth(UserAuth userAuth) async {
    return userAuthRepository.insertUserAuth(userAuth);
  }

  Future<List<UserAuth>> getAllUserAuth({String query}) {
    return userAuthRepository.getAllUserAuth(query: query);
  }

  Future<int> updateUserAuth(UserAuth userAuth) {
    return userAuthRepository.updateUserAuth(userAuth);
  }

  Future<int> deleteUserAuthById(int userId) {
    return userAuthRepository.deleteUserAuthById(userId);
  }

  Future<int> deleteAllUserAuth() {
    return userAuthRepository.deleteAllUserAuth();
  }
}
