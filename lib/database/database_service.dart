import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:app_resto_viet/database/food_stock_db.dart';

class DatabaseService {
  Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await _initialize();
    return _database!;
  }

  Future<String> get fullPath async {
    const name = 'food_stock.db';
    final path = await getDatabasesPath();
    return join(path, name);
  }

  Future<Database> _initialize() async {
    final path = await fullPath;
    var database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await create(db, version, 'food_stock');
      },
      singleInstance: true,
    );
    return database;
  }

  Future<void> create(Database database, int version, String tableName) async {
    await FoodStockDB().createTable(database, tableName);
  }
}
