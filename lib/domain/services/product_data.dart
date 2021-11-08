import 'package:my_cupboard/domain/models/product.dart';

abstract class ProductData {
  Future<List<Product>> getAllProdcut();
  Future<Product> getProductByName(String productName);
  Future<Product> getProductByBarCode(String barCode);
  Future<Product?> addProduct(Product product);
  Future<Product> updateProduct(Product product, String name);
  Future<bool> deleteProduct(String? productName, int? productId);
}
