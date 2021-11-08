import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_cupboard/domain/models/product.dart';

import 'package:my_cupboard/domain/services/product_data.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc(this._productData) : super(ProductState.initial()) {
    _init();
    on<_AddProduct>(_addProductToState);
    on<_GetAllProducts>(_getAllProductsToState);
    on<_DeleteProduct>(_deleteProductToState);
  }
  final ProductData _productData;

  late final TextEditingController _productNameController;

  void _init() {
    _productNameController = TextEditingController();
  }

  TextEditingController get productNameController => _productNameController;

  FutureOr<void> _addProductToState(_AddProduct event, Emitter<ProductState> emit) async {
    final product = Product(name: _productNameController.text, barCode: 'barCode', category: 1);
    final response = await _productData.addProduct(product);
    print(response);

    _getAllProductsToState;
  }

  @override
  Future<void> close() {
    _productNameController.dispose();
    return super.close();
  }

  FutureOr<void> _getAllProductsToState(_GetAllProducts event, Emitter<ProductState> emit) async {
    final products = await _productData.getAllProdcut();

    emit(state.copyWith(products: products));
  }

  FutureOr<void> _deleteProductToState(_DeleteProduct event, Emitter<ProductState> emit) async {
    var productId;
    try {
      int productId = int.parse(_productNameController.text);
      final response = await _productData.deleteProduct(_productNameController.text, productId);
    } catch (e) {
      productId = null;
      final response = await _productData.deleteProduct(_productNameController.text, productId);
    }
  }
}
