import 'dart:async';
import 'package:flutterdemo/services/storage/model/userAuth.dart';
import 'package:flutterdemo/services/storage/storage_database_helper.dart';

class UserAuthDao {
  final dbProvider = DatabaseHelper.instance;

  //Adds new User records
  Future<int> createUserAuth(UserAuth userAuth) async {
    final db = await dbProvider.database;
    var result = db.insert(userAuthTable, userAuth.toDatabaseJson());
    return result;
  }

  //Get All User items
  //Searches if query string was passed
  Future<List<UserAuth>> getUserAuth(
      {List<String> columns, String query}) async {
    final db = await dbProvider.database;

    List<Map<String, dynamic>> result;
    if (query != null) {
      if (query.isNotEmpty)
        result = await db.query(userAuthTable,
            columns: columns, where: 'userId LIKE ?', whereArgs: ["%$query%"]);
    } else {
      result = await db.query(userAuthTable, columns: columns);
    }

    List<UserAuth> userAuth = result.isNotEmpty
        ? result.map((item) => UserAuth.fromDatabaseJson(item)).toList()
        : [];
    return userAuth;
  }

  //Update User record
  Future<int> updateUserAuth(UserAuth userAuth) async {
    final db = await dbProvider.database;

    var result = await db.update(userAuthTable, userAuth.toDatabaseJson(),
        where: "$userAuthIdField = ?", whereArgs: [userAuth.userId]);

    return result;
  }

  //Delete User records
  Future<int> deleteUserAuth(int userId) async {
    final db = await dbProvider.database;
    var result = await db
        .delete(userAuthTable, where: 'userId = ?', whereArgs: [userId]);

    return result;
  }

  //Delete all User records
  Future<int> deleteAllUserAuth() async {
    final db = await dbProvider.database;
    var result = await db.delete(
      userAuthTable,
    );

    return result;
  }
}
