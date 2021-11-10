import 'package:my_cupboard/data/services/db_service.dart';
import 'package:my_cupboard/domain/models/product.dart';

import 'package:my_cupboard/domain/services/product_data.dart';
import 'package:sqflite/sqflite.dart';

class ProductDataImpl implements ProductData {
  Future<Database> _service() async {
    try {
      final dbService = await DBService.db.database.then((value) => value);
      return dbService;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<Product?> addProduct(Product product) async {
    try {
      var response = await _service().then(
        (database) => database.transaction(
          (txn) async => await txn.rawInsert(
              '''INSERT INTO product(name,barcode,category) values ('${product.name}','${product.barCode}',${product.category})'''),
        ),
      );

      if (response != 0) return product;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<bool> deleteProduct(String? productName, int? productId) async {
    int response = await _service().then(
      (database) => database.rawDelete('delete from product where name="$productName" or id= $productId'),
    );

    if (response == 1) return true;
    return false;
  }

  @override
  Future<List<Product>> getAllProdcut() async {
    final dbService = await DBService.db.database.then((value) => value);

    try {
      var productos = await dbService.rawQuery('SELECT * FROM PRODUCT');

      productos.map((e) => Product.fromJson(e)).toList();

      return productos.map((e) => Product.fromJson(e)).toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<Product> updateProduct(Product product, String name) {
    // TODO: implement updateProduct
    throw UnimplementedError();
  }

  @override
  Future<Product> getProductByBarCode(String barCode) {
    // TODO: implement getProductByBarCode
    throw UnimplementedError();
  }

  @override
  Future<Product> getProductByName(String productName) {
    // TODO: implement getProductByName
    throw UnimplementedError();
  }

  // @override
  // Future<DataResult<Product>> addProduct(Product product) async {
  //   final dbService = DBService.db.database;

  //   // var resultSave = dbService.then((value) => value.transaction((txn) async => await txn.rawInsert(
  //   //     '''INSERT INTO product(name,barcode,category) values ('${product.mame},${product.barCode},${product.category}')''')));

  //   // if (await resultSave != 0) {
  //   //   return dbService.then((value) {
  //   //     return value.rawQuery('''select * from product where name= ${product.mame}''').then((value) => value.map((e) => null));
  //   //   });
  //   // }
  // }

}
