import 'package:my_cupboard/domain/models/cupboard.dart';
import 'package:my_cupboard/domain/models/data_result.dart';

abstract class CupBoardData {
  Future<DataResult<List<Cupboard>>> getAllCupBoard();
  Future<DataResult<Cupboard>> getCupBoardByProduct(String productName);
  Future<DataResult<Cupboard>> addProductToCupBoard(Cupboard cupBoard);
  Future<DataResult<Cupboard>> updateProductFromCupBoard(Cupboard cupBoard, String name);
  Future<DataResult<bool>> deleteProductfromCupBoard(String cupBoardName, int cupBoardId);
}
