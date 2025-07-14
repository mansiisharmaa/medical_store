import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseProvider {
  final String _databaseName = "StudentData.db";
  static Database? _database;

  Future<Database> createDatabase() async {
    
    String path = join(await getDatabasesPath(), _databaseName);
    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await _createTables(db);
      },
    );
  }

  Future<void> _createTables(Database db) async {
    await db.execute(
      'CREATE TABLE IF NOT EXISTS medicinmodel(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, discription TEXT, price REAL)',
    );
  }

  Future<Database?> get db async {
    if (_database != null) return _database;
    _database = await createDatabase();
    return _database;
  }
}