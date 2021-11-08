import 'package:my_cupboard/domain/models/categorie.dart';
import 'package:my_cupboard/domain/models/data_result.dart';

abstract class CategoriesData {
  Future<DataResult<List<Categorie>>> getAllCategories();
  Future<DataResult<Categorie>> getCategorie(String categorieName);
  Future<DataResult<Categorie>> addCategorie(Categorie categorie);
  Future<DataResult<Categorie>> updateCategorie(Categorie categorie);
  Future<DataResult<bool>> deleteCategorie(String categorieName, int categorieId);
}
