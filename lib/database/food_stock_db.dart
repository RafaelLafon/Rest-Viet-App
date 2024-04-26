import 'dart:html';

import 'package:sqflite/sqflite.dart';
import 'package:app_resto_viet/database/database_service.dart';
import 'package:app_resto_viet/models/feculents.dart';

class FoodStockDB{
  final tableName = 'foods';

  Future<void> createTable(Database database) async {
    await database.execute("""CREATE TABLE IF NOT EXIST $tableName(
      "name" STRING,
      "quantity" INT
    );
    """);
  }
}