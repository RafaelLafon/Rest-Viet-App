import 'package:sqflite/sqflite.dart';
import 'package:app_resto_viet/database/database_service.dart';

class FoodStockDB{
  Future<void> createTable(Database database, final tableName) async {
    await database.execute("""CREATE TABLE IF NOT EXIST $tableName(
      "name" STRING,
      "quantity" INT
    );
    """);
  }

  Future<int> create({required String title, final tableName}) async {
    final database = await DatabaseService().database;
    return await database.rawInsert(
      '''INSERT INTO $tableName(title,created_at) VALUES (?,?)''',
      [title, DateTime.now().millisecondsSinceEpoch],
    );
  }
}