import 'package:my_cupboard/data/services/db_service.dart';

import 'package:my_cupboard/domain/models/categorie.dart';
import 'package:my_cupboard/domain/services/categories_data.dart';
import 'package:sqflite/sqflite.dart';

class CategoriesDataImpl implements CategoriesData {
  Future<Database> _service() async {
    try {
      final dbService = await DBService.db.database.then((value) => value);
      return dbService;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<Categorie> addCategorie(Categorie categorie) async {
    try {
      var response = await _service().then(
        (database) async {
          final result =
              await database.rawQuery('''select * from categories where categories.name=='${categorie.name}';''');
          if (result.isEmpty) {
            return database.transaction(
              (txn) async =>
                  await txn.rawInsert('''INSERT INTO categories(name) values ('${categorie.name.toLowerCase()}')'''),
            );
          } else {
            return 0;
          }
        },
      );
      if (response == 0) return Categorie(name: '');
      return categorie;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<bool> deleteCategorie(String categorieName, int categorieId) async {
    int response = await _service().then(
      (database) => database.rawDelete('delete from product where name="$categorieName" or id= $categorieId'),
    );

    if (response == 1) return true;
    return false;
  }

  @override
  Future<List<Categorie>> getAllCategories() async {
    try {
      var categories = await _service().then((database) => database.rawQuery('SELECT * FROM categories'));

      return categories.map((e) => Categorie.fromJson(e)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<Categorie> getCategorie(String categorieName) {
    // TODO: implement getCategorie
    throw UnimplementedError();
  }

  @override
  Future<Categorie> updateCategorie(Categorie categorie) {
    // TODO: implement updateCategorie
    throw UnimplementedError();
  }
}
