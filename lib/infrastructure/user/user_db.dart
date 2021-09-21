import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:nipange/domain/user/user.dart';

class UserDatabase {
  Future<Database> createDb() async {
    return openDatabase(
      //set db path
      join(await getDatabasesPath(), 'users_database.db'),
      onCreate: (db, version) {
        return db.execute("""CREATE TABLE users(id TEXT PRIMARY KEY, 
            phone TEXT, email TEXT, username TEXT, password TEXT,
          isEmailVerified INTEGER, isPhoneVerified INTEGER, type TEXT, dp TEXT,
          device TEXT, token TEXT, createdAt TEXT)""");
      },
      version: 1,
    );
  }

  Future<void> insert(User user) async {
    final Database database = await createDb();
    await database.insert(
      "users",
      user.toMapDb(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  //get user or null
  Future get() async {
    final Database database = await createDb();
    final List<Map<String, dynamic>> maps = await database.query('users');
    //convert to user
    if (maps.length > 0) return User.fromMapDb(maps[0]);
    return null;
  }

  Future<void> update(User user) async {
    final Database database = await createDb();
    await database
        .update("users", user.toMapDb(), where: "id = ?", whereArgs: [user.id]);
  }

  Future<void> delete(String id) async {
    final Database database = await createDb();
    await database.delete("users", where: "id = ?", whereArgs: [id]);
  }

  // get user
  Future<User> getUser() async {
    final Database database = await createDb();
    final List<Map<String, dynamic>> maps = await database.query('users');
    //convert to user
    return User.fromMapDb(maps[0]);
  }
}
