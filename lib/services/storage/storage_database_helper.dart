import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:flutterdemo/services/service_locator.dart';
import 'package:flutterdemo/services/storage/model/user.dart';
import 'package:flutterdemo/services/storage/model/userAuth.dart';

import 'package:flutterdemo/business/app_state_store.dart';

class DatabaseHelper {
  static final _databaseName = "flutter-demo.db";
  static final _databaseVersion = 1;
  static final _databaseNewVersion = 1;
  static Database _database;

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await createDatabase();
    return _database;
  }

  createDatabase() async {
    var database;

    if (USE_FAKE_DB) {
      var databaseFactory = databaseFactoryFfi;
      database = await databaseFactory.openDatabase(inMemoryDatabasePath);
      initDB(database, _databaseVersion);
      onUpgrade(database, _databaseVersion, _databaseNewVersion);
      print('db => inMemoryDatabasePath');
    } else {
      Directory documentsDirectory = await getApplicationDocumentsDirectory();
      String path = join(documentsDirectory.path, _databaseName);
      database = await openDatabase(path,
          version: _databaseVersion, onCreate: initDB, onUpgrade: onUpgrade);
      print('db => $path');
    }

    return database;
  }

// Changing DB schema migrations
  void onUpgrade(Database database, int oldVersion, int newVersion) {
    if (newVersion > oldVersion) {}
  }

  void initDB(Database database, int version) async {
    print('CREATE TABLE USER');
    await database.execute("CREATE TABLE IF NOT EXISTS $userTable ("
        "$userIdField INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, "
        "$usernameField TEXT, "
        "$isActiveField INTEGER )");

    print('CREATE TABLE USERAUTH');
    await database.execute("CREATE TABLE IF NOT EXISTS $userAuthTable ("
        "$userAuthIdField INTEGER NOT NULL,"
        "$userAuthTokenField TEXT,"
        "PRIMARY KEY ( $userAuthIdField ) "
        "FOREIGN KEY ( $userAuthIdField ) "
        "REFERENCES $userTable "
        "($userIdField)  ON DELETE CASCADE )");
  }

  void closeDB() async {
    print('close database');
    await _database.close();
  }
}
