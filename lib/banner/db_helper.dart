import 'dart:io';
import 'package:banner_generate/banner/banner_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static String dbName = 'myDatabase.db';
  static int dbVersion = 1;
  static String dbTable = 'myTable';
  static const id = 'id';
  static const name = 'name';
  static final DBHelper instance = DBHelper();

  static Database? _database;
  Future<Database?> get database async {
    // if (_database != null) return _database;

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
  name TEXT NOT NULL,
  price TEXT NOT NULL,
  package TEXT NOT NULL,
  dates TEXT NOT NULL,
  month TEXT NOT NULL,
  no TEXT NOT NULL
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
  Future<BannerModel> insert(BannerModel bannerModel) async {
    Database? db = await instance.database;
    await db!.insert(dbTable, bannerModel.toMap());
    return bannerModel;
  }

  Future<List<BannerModel>> read() async {
    Database? db = await instance.database;
    final List<Map<String, Object?>> queryResults = await db!.query(dbTable);
    return queryResults.map((e) => BannerModel.fromMap(e)).toList();
  }
}
