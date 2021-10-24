
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBService{
  static Database? _database;
  static final DBService db = DBService._();

  DBService._();

  Future<Database> get database async {
    if(database!=null) return _database!;

    _database = await initDB();

    return _database!;
  }

  Future<Database> initDB() async{
      Directory documentsDirectory = await getApplicationDocumentsDirectory();

      final path= join(documentsDirectory.path,'mycupboard.db');
      print(path);

      return await openDatabase(path,version: 1,onOpen: (db){},onCreate: (db,version)async{
        await db.execute('''
          CREATE TABLE product(
            id INTEGER PRIMARY KEY,
            name TEXT,
            marca TEXT,
            cantidad INTEGER,
          )
        ''');
      });
  }
}

