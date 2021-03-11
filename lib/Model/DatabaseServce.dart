import 'dart:async';
import 'package:flutterapp/Model/User.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


final tableUser = "user";
class DatabaseService {
  static final DatabaseService _instance = DatabaseService._internal();

  Future<Database> database;

  factory DatabaseService() {
    return _instance;
  }

  DatabaseService._internal() {
    initDatabase();
  }

  initDatabase() async {
    database = openDatabase(
      join(await getDatabasesPath(), 'beautiful_alarm.db'),
      // When the database is first created, create a table to store data.
      onCreate: (db, version) {
        db.execute(
          '''CREATE TABLE $tableUser(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            userName STRING,
              password STRING
            )
          ''',
        );
      },
      // Set the version. This executes the onCreate function and provides a
      // path to perform database upgrades and downgrades.
      version: 1,
    );
  }


  Future<int> insertUser(UserModel user) async {
    Database db = await database;
    int id = await db.insert(tableUser, user.toMap());
    return id;
  }


  Future<UserModel> getUser(String userName) async {
    Database db = await database;
    List<Map> datas = await db.query(tableUser, where: 'userName = ?', whereArgs: [userName]);
    if (datas.length > 0) {
    return UserModel.fromMap(datas.first);
    }
    return null;
  }
}
