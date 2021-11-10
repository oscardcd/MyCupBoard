import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBService {
  DBService._();

  static Database? _database;
  static final DBService db = DBService._();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await initDB();

    return _database!;
  }

  Future<Database> initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();

    final path = join(documentsDirectory.path, 'mycupboard.db');

    return await openDatabase(path, version: 2, onOpen: (db) {}, onCreate: (db, version) async {
      await db.execute('''
          CREATE TABLE product(
            id INTEGER PRIMARY KEY,
            name TEXT,
            barCode TEXT,
            category INTEGER
          );

          CREATE TABLE category(
            id integer PRIMARY KEY,
            name TEXT
          );

          CREATE TABLE cupboard(
            id integer PRIMARY KEY,
            id_product INT,
            expirate_date INT,
            quantity INT,
            id_status INT
          );

          CREATE TABLE status(
            id INTEGER PRIMARY KEY,
            name TEXT
          );
        ''');
    });
  }
}
