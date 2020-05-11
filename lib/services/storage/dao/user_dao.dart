import 'dart:async';
import 'package:flutterdemo/services/storage/model/user.dart';
import 'package:flutterdemo/services/storage/storage_database_helper.dart';

class UserDao {
  final dbProvider = DatabaseHelper.instance;

  //Adds new User records
  Future<int> createUser(User user) async {
    final db = await dbProvider.database;
    var result = db.insert(userTable, user.toDatabaseJson());
    return result;
  }

  //Get All User items
  //Searches if query string was passed
  Future<List<User>> getUsers({List<String> columns, String query}) async {
    final db = await dbProvider.database;

    List<Map<String, dynamic>> result;
    if (query != null) {
      if (query.isNotEmpty)
        result = await db.query(userTable,
            columns: columns,
            where: 'username LIKE ?',
            whereArgs: ["%$query%"]);
    } else {
      result = await db.query(userTable, columns: columns);
    }

    List<User> users = result.isNotEmpty
        ? result.map((item) => User.fromDatabaseJson(item)).toList()
        : [];
    return users;
  }

  //Update User record
  Future<int> updateUser(User user) async {
    final db = await dbProvider.database;

    var result = await db.update(userTable, user.toDatabaseJson(),
        where: "$userIdField = ?", whereArgs: [user.userId]);

    return result;
  }

  //Delete User records
  Future<int> deleteUser(int userId) async {
    final db = await dbProvider.database;
    var result =
        await db.delete(userTable, where: 'userId = ?', whereArgs: [userId]);

    return result;
  }

  //Delete all User records
  Future<int> deleteAllUser() async {
    final db = await dbProvider.database;
    var result = await db.delete(
      userTable,
    );

    return result;
  }
}
