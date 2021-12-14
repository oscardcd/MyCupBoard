import 'package:my_cupboard/domain/models/categorie.dart';
import 'package:my_cupboard/domain/models/data_result.dart';

abstract class CategoriesData {
  Future<List<Categorie>> getAllCategories();
  Future<Categorie> getCategorie(String categorieName);
  Future<Categorie> addCategorie(Categorie categorie);
  Future<Categorie> updateCategorie(Categorie categorie);
  Future<bool> deleteCategorie(String categorieName, int categorieId);
}
