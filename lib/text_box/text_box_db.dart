import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'text_box_model.dart';

class DBTextBox {
  static String dbName = 'textboxDatabase.db';
  static int dbVersion = 2;
  static String dbTable = 'myTable';
  static const id = 'id';
  static const name = 'name';
  static final DBTextBox instance = DBTextBox();

  static Database? _database;
  Future<Database?> get database async {
    _database ??= await initDB();
    return _database;
  }

  initDB() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, dbName);
    return await openDatabase(path, version: dbVersion, onCreate: onCreate);
  }

  Future onCreate(Database db, int version) async {
    db.execute('''
CREATE TABLE $dbTable(
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL
)
''');
  }

  // Future insert(Map<String, dynamic> row) async {
  //   Database? db = await instance.database;
  //   return await db!.insert(dbTable, row);
  // }

  // Future<List<Map<String, dynamic>>> read() async {
  //   Database? db = await instance.database;
  //   return await db!.query(dbTable);
  // }
  Future<TextBoxModel> insert(TextBoxModel textBoxModel) async {
    Database? db = await instance.database;
    await db!.insert(dbTable, textBoxModel.toMap());
    return textBoxModel;
  }

  Future<List<TextBoxModel>> read() async {
    Database? db = await instance.database;
    final List<Map<String, Object?>> queryResults = await db!.query(dbTable);
    return queryResults.map((e) => TextBoxModel.fromMap(e)).toList();
  }
}
