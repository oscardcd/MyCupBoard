import 'package:my_cupboard/domain/models/status.dart';
import 'package:my_cupboard/domain/models/data_result.dart';
import 'package:my_cupboard/domain/services/status_product_data.dart';

class StatusProductDataImpl implements StatusProductData {
  @override
  Future<DataResult<Status>> addProduct(Status status) {
    // TODO: implement addProduct
    throw UnimplementedError();
  }

  @override
  Future<DataResult<bool>> deleteProductfromCupBoard(String statusName, int statusId) {
    // TODO: implement deleteProductfromCupBoard
    throw UnimplementedError();
  }

  @override
  Future<DataResult<List<Status>>> getAllProdcut() {
    // TODO: implement getAllProdcut
    throw UnimplementedError();
  }

  @override
  Future<DataResult<Status>> getProductByName(String statusName) {
    // TODO: implement getProductByName
    throw UnimplementedError();
  }

  @override
  Future<DataResult<Status>> updateProduct(Status status, String name) {
    // TODO: implement updateProduct
    throw UnimplementedError();
  }
}
