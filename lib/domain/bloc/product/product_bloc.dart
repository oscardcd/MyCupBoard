import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_cupboard/domain/models/categorie.dart';
import 'package:my_cupboard/domain/models/product.dart';
import 'package:my_cupboard/domain/services/categories_data.dart';

import 'package:my_cupboard/domain/services/product_data.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc(this._productData, this._categoriesData) : super(ProductState.initial()) {
    _init();
    on<_Started>(_startToState);
    on<_ReadBarCode>(_readBarCodeToState);
    on<_AddProduct>(_addProductToState);
    on<_GetAllProducts>(_getAllProductsToState);
    on<_DeleteProduct>(_deleteProductToState);
  }
  final ProductData _productData;
  final CategoriesData _categoriesData;

  late final TextEditingController _productNameController;
  late final TextEditingController _barCodeController;

  void _init() {
    _productNameController = TextEditingController();
    _barCodeController = TextEditingController();
  }

  TextEditingController get productNameController => _productNameController;
  TextEditingController get barCodeController => _barCodeController;

  FutureOr<void> _startToState(_Started event, Emitter<ProductState> emit) async {
    try {
      final categories = await _categoriesData.getAllCategories();
      categories.insert(0, Categorie(name: 'Select', id: 0));

      emit(state.copyWith(categories: categories));
    } on Exception catch (e) {
      emit(state.copyWith(categories: []));
    }
  }

  FutureOr<void> _readBarCodeToState(_ReadBarCode event, Emitter<ProductState> emit) async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('#ff6666', 'Cancel', true, ScanMode.BARCODE);
      _barCodeController.text = barcodeScanRes;
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
  }

  FutureOr<void> _addProductToState(_AddProduct event, Emitter<ProductState> emit) async {
    final product = Product(name: _productNameController.text, barCode: _barCodeController.text, category: 1);
    final response = await _productData.addProduct(product);
    print(response);

    final products = await _productData.getAllProdcut();
    _cleanInputs();
    emit(state.copyWith(products: products));
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
    var productId = '';
    try {
      int? productId = int.tryParse(_productNameController.text);
      await _productData.deleteProduct(_productNameController.text, productId);
    } catch (e) {
      throw Exception(e);
    }

    final products = await _productData.getAllProdcut();

    emit(state.copyWith(products: products));
  }

  void _cleanInputs() {
    _productNameController.text = '';
    _barCodeController.text = '';
  }
}
