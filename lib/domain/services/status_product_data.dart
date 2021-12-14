import 'package:my_cupboard/domain/models/data_result.dart';
import 'package:my_cupboard/domain/models/status.dart';

abstract class StatusProductData {
  Future<DataResult<List<Status>>> getAllProdcut();
  Future<DataResult<Status>> getProductByName(String statusName);
  Future<DataResult<Status>> addProduct(Status status);
  Future<DataResult<Status>> updateProduct(Status status, String name);
  Future<DataResult<bool>> deleteProductfromCupBoard(String statusName, int statusId);
}
