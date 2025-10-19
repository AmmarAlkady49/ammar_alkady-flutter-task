import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'table_schemas.dart';

class AppDatabaseHelper {
  static final AppDatabaseHelper instance = AppDatabaseHelper._init();
  static Database? _database;

  AppDatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('app_data.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute(TableSchemas.productsTable);
    // await db.execute(TableSchemas.categoriesTable);
    // await db.execute(TableSchemas.plansTable);
    // await db.execute(TableSchemas.filtersTable);
  }

  Future<void> insert(String table, Map<String, dynamic> data) async {
    final db = await instance.database;
    await db.insert(table, data, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Map<String, dynamic>>> query(String table) async {
    final db = await instance.database;
    return db.query(table);
  }

  Future<void> delete(String table, String id) async {
    final db = await instance.database;
    await db.delete(table, where: 'id = ?', whereArgs: [id]);
  }
}
