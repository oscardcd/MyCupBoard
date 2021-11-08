import 'package:my_cupboard/domain/models/data_result.dart';
import 'package:my_cupboard/domain/models/categorie.dart';
import 'package:my_cupboard/domain/services/categories_data.dart';

class CategoriesDataImpl implements CategoriesData {
  @override
  Future<DataResult<Categorie>> addCategorie(Categorie categorie) {
    // TODO: implement addCategorie
    throw UnimplementedError();
  }

  @override
  Future<DataResult<bool>> deleteCategorie(String categorieName, int categorieId) {
    // TODO: implement deleteCategorie
    throw UnimplementedError();
  }

  @override
  Future<DataResult<List<Categorie>>> getAllCategories() {
    // TODO: implement getAllCategories
    throw UnimplementedError();
  }

  @override
  Future<DataResult<Categorie>> getCategorie(String categorieName) {
    // TODO: implement getCategorie
    throw UnimplementedError();
  }

  @override
  Future<DataResult<Categorie>> updateCategorie(Categorie categorie) {
    // TODO: implement updateCategorie
    throw UnimplementedError();
  }
}
