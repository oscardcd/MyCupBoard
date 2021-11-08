part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    required List<Product> products,
  }) = _ProductState;
  factory ProductState.initial() {
    return const ProductState(
      products: [],
    );
  }
}
