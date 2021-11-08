import 'package:my_cupboard/domain/models/data_result.dart';
import 'package:my_cupboard/domain/models/cupboard.dart';
import 'package:my_cupboard/domain/services/cupboar_data.dart';

class CupBoardDataImpl implements CupBoardData {
  @override
  Future<DataResult<Cupboard>> addProductToCupBoard(Cupboard cupBoard) {
    // TODO: implement addProductToCupBoard
    throw UnimplementedError();
  }

  @override
  Future<DataResult<bool>> deleteProductfromCupBoard(String cupBoardName, int cupBoardId) {
    // TODO: implement deleteProductfromCupBoard
    throw UnimplementedError();
  }

  @override
  Future<DataResult<List<Cupboard>>> getAllCupBoard() {
    // TODO: implement getAllCupBoard
    throw UnimplementedError();
  }

  @override
  Future<DataResult<Cupboard>> getCupBoardByProduct(String productName) {
    // TODO: implement getCupBoardByProduct
    throw UnimplementedError();
  }

  @override
  Future<DataResult<Cupboard>> updateProductFromCupBoard(Cupboard cupBoard, String name) {
    // TODO: implement updateProductFromCupBoard
    throw UnimplementedError();
  }
}
