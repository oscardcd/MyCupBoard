// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductEventTearOff {
  const _$ProductEventTearOff();

  _Started started() {
    return const _Started();
  }

  _ReadBarCode readBarCode() {
    return const _ReadBarCode();
  }

  _AddProduct addProduct() {
    return const _AddProduct();
  }

  _GetAllProducts getAllProducts() {
    return const _GetAllProducts();
  }

  _DeleteProduct deleteProduct() {
    return const _DeleteProduct();
  }
}

/// @nodoc
const $ProductEvent = _$ProductEventTearOff();

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() readBarCode,
    required TResult Function() addProduct,
    required TResult Function() getAllProducts,
    required TResult Function() deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readBarCode,
    TResult Function()? addProduct,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readBarCode,
    TResult Function()? addProduct,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReadBarCode value) readBarCode,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetAllProducts value) getAllProducts,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadBarCode value)? readBarCode,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadBarCode value)? readBarCode,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res> implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  final ProductEvent _value;
  // ignore: unused_field
  final $Res Function(ProductEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ProductEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() readBarCode,
    required TResult Function() addProduct,
    required TResult Function() getAllProducts,
    required TResult Function() deleteProduct,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readBarCode,
    TResult Function()? addProduct,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProduct,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readBarCode,
    TResult Function()? addProduct,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProduct,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReadBarCode value) readBarCode,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetAllProducts value) getAllProducts,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadBarCode value)? readBarCode,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadBarCode value)? readBarCode,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$ReadBarCodeCopyWith<$Res> {
  factory _$ReadBarCodeCopyWith(
          _ReadBarCode value, $Res Function(_ReadBarCode) then) =
      __$ReadBarCodeCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReadBarCodeCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements _$ReadBarCodeCopyWith<$Res> {
  __$ReadBarCodeCopyWithImpl(
      _ReadBarCode _value, $Res Function(_ReadBarCode) _then)
      : super(_value, (v) => _then(v as _ReadBarCode));

  @override
  _ReadBarCode get _value => super._value as _ReadBarCode;
}

/// @nodoc

class _$_ReadBarCode implements _ReadBarCode {
  const _$_ReadBarCode();

  @override
  String toString() {
    return 'ProductEvent.readBarCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReadBarCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() readBarCode,
    required TResult Function() addProduct,
    required TResult Function() getAllProducts,
    required TResult Function() deleteProduct,
  }) {
    return readBarCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readBarCode,
    TResult Function()? addProduct,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProduct,
  }) {
    return readBarCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readBarCode,
    TResult Function()? addProduct,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProduct,
    required TResult orElse(),
  }) {
    if (readBarCode != null) {
      return readBarCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReadBarCode value) readBarCode,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetAllProducts value) getAllProducts,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return readBarCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadBarCode value)? readBarCode,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
  }) {
    return readBarCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadBarCode value)? readBarCode,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (readBarCode != null) {
      return readBarCode(this);
    }
    return orElse();
  }
}

abstract class _ReadBarCode implements ProductEvent {
  const factory _ReadBarCode() = _$_ReadBarCode;
}

/// @nodoc
abstract class _$AddProductCopyWith<$Res> {
  factory _$AddProductCopyWith(
          _AddProduct value, $Res Function(_AddProduct) then) =
      __$AddProductCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddProductCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements _$AddProductCopyWith<$Res> {
  __$AddProductCopyWithImpl(
      _AddProduct _value, $Res Function(_AddProduct) _then)
      : super(_value, (v) => _then(v as _AddProduct));

  @override
  _AddProduct get _value => super._value as _AddProduct;
}

/// @nodoc

class _$_AddProduct implements _AddProduct {
  const _$_AddProduct();

  @override
  String toString() {
    return 'ProductEvent.addProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() readBarCode,
    required TResult Function() addProduct,
    required TResult Function() getAllProducts,
    required TResult Function() deleteProduct,
  }) {
    return addProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readBarCode,
    TResult Function()? addProduct,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProduct,
  }) {
    return addProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readBarCode,
    TResult Function()? addProduct,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReadBarCode value) readBarCode,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetAllProducts value) getAllProducts,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadBarCode value)? readBarCode,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadBarCode value)? readBarCode,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class _AddProduct implements ProductEvent {
  const factory _AddProduct() = _$_AddProduct;
}

/// @nodoc
abstract class _$GetAllProductsCopyWith<$Res> {
  factory _$GetAllProductsCopyWith(
          _GetAllProducts value, $Res Function(_GetAllProducts) then) =
      __$GetAllProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAllProductsCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$GetAllProductsCopyWith<$Res> {
  __$GetAllProductsCopyWithImpl(
      _GetAllProducts _value, $Res Function(_GetAllProducts) _then)
      : super(_value, (v) => _then(v as _GetAllProducts));

  @override
  _GetAllProducts get _value => super._value as _GetAllProducts;
}

/// @nodoc

class _$_GetAllProducts implements _GetAllProducts {
  const _$_GetAllProducts();

  @override
  String toString() {
    return 'ProductEvent.getAllProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAllProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() readBarCode,
    required TResult Function() addProduct,
    required TResult Function() getAllProducts,
    required TResult Function() deleteProduct,
  }) {
    return getAllProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readBarCode,
    TResult Function()? addProduct,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProduct,
  }) {
    return getAllProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readBarCode,
    TResult Function()? addProduct,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProduct,
    required TResult orElse(),
  }) {
    if (getAllProducts != null) {
      return getAllProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReadBarCode value) readBarCode,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetAllProducts value) getAllProducts,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return getAllProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadBarCode value)? readBarCode,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
  }) {
    return getAllProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadBarCode value)? readBarCode,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (getAllProducts != null) {
      return getAllProducts(this);
    }
    return orElse();
  }
}

abstract class _GetAllProducts implements ProductEvent {
  const factory _GetAllProducts() = _$_GetAllProducts;
}

/// @nodoc
abstract class _$DeleteProductCopyWith<$Res> {
  factory _$DeleteProductCopyWith(
          _DeleteProduct value, $Res Function(_DeleteProduct) then) =
      __$DeleteProductCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$DeleteProductCopyWith<$Res> {
  __$DeleteProductCopyWithImpl(
      _DeleteProduct _value, $Res Function(_DeleteProduct) _then)
      : super(_value, (v) => _then(v as _DeleteProduct));

  @override
  _DeleteProduct get _value => super._value as _DeleteProduct;
}

/// @nodoc

class _$_DeleteProduct implements _DeleteProduct {
  const _$_DeleteProduct();

  @override
  String toString() {
    return 'ProductEvent.deleteProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() readBarCode,
    required TResult Function() addProduct,
    required TResult Function() getAllProducts,
    required TResult Function() deleteProduct,
  }) {
    return deleteProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readBarCode,
    TResult Function()? addProduct,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProduct,
  }) {
    return deleteProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readBarCode,
    TResult Function()? addProduct,
    TResult Function()? getAllProducts,
    TResult Function()? deleteProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReadBarCode value) readBarCode,
    required TResult Function(_AddProduct value) addProduct,
    required TResult Function(_GetAllProducts value) getAllProducts,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return deleteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadBarCode value)? readBarCode,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
  }) {
    return deleteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadBarCode value)? readBarCode,
    TResult Function(_AddProduct value)? addProduct,
    TResult Function(_GetAllProducts value)? getAllProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(this);
    }
    return orElse();
  }
}

abstract class _DeleteProduct implements ProductEvent {
  const factory _DeleteProduct() = _$_DeleteProduct;
}

/// @nodoc
class _$ProductStateTearOff {
  const _$ProductStateTearOff();

  _ProductState call({required List<Product> products}) {
    return _ProductState(
      products: products,
    );
  }
}

/// @nodoc
const $ProductState = _$ProductStateTearOff();

/// @nodoc
mixin _$ProductState {
  List<Product> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
abstract class _$ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(
          _ProductState value, $Res Function(_ProductState) then) =
      __$ProductStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Product> products});
}

/// @nodoc
class __$ProductStateCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(
      _ProductState _value, $Res Function(_ProductState) _then)
      : super(_value, (v) => _then(v as _ProductState));

  @override
  _ProductState get _value => super._value as _ProductState;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_ProductState(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_ProductState implements _ProductState {
  const _$_ProductState({required this.products});

  @override
  final List<Product> products;

  @override
  String toString() {
    return 'ProductState(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductState &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(products);

  @JsonKey(ignore: true)
  @override
  _$ProductStateCopyWith<_ProductState> get copyWith =>
      __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState({required List<Product> products}) =
      _$_ProductState;

  @override
  List<Product> get products => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductStateCopyWith<_ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
