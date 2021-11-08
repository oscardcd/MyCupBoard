part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.started() = _Started;
  const factory ProductEvent.addProduct() = _AddProduct;
  const factory ProductEvent.getAllProducts() = _GetAllProducts;
  const factory ProductEvent.deleteProduct() = _DeleteProduct;
}
