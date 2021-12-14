// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cupboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cupboard _$CupboardFromJson(Map<String, dynamic> json) {
  return _Cupboard.fromJson(json);
}

/// @nodoc
class _$CupboardTearOff {
  const _$CupboardTearOff();

  _Cupboard call(
      {int? id,
      @JsonKey(name: 'id_product') required int product,
      @JsonKey(name: 'expirate_date') required DateTime expireDate,
      required int quantity,
      @JsonKey(name: 'id_status') required int status}) {
    return _Cupboard(
      id: id,
      product: product,
      expireDate: expireDate,
      quantity: quantity,
      status: status,
    );
  }

  Cupboard fromJson(Map<String, Object> json) {
    return Cupboard.fromJson(json);
  }
}

/// @nodoc
const $Cupboard = _$CupboardTearOff();

/// @nodoc
mixin _$Cupboard {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_product')
  int get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'expirate_date')
  DateTime get expireDate => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_status')
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CupboardCopyWith<Cupboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CupboardCopyWith<$Res> {
  factory $CupboardCopyWith(Cupboard value, $Res Function(Cupboard) then) =
      _$CupboardCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'id_product') int product,
      @JsonKey(name: 'expirate_date') DateTime expireDate,
      int quantity,
      @JsonKey(name: 'id_status') int status});
}

/// @nodoc
class _$CupboardCopyWithImpl<$Res> implements $CupboardCopyWith<$Res> {
  _$CupboardCopyWithImpl(this._value, this._then);

  final Cupboard _value;
  // ignore: unused_field
  final $Res Function(Cupboard) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
    Object? expireDate = freezed,
    Object? quantity = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int,
      expireDate: expireDate == freezed
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CupboardCopyWith<$Res> implements $CupboardCopyWith<$Res> {
  factory _$CupboardCopyWith(_Cupboard value, $Res Function(_Cupboard) then) =
      __$CupboardCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'id_product') int product,
      @JsonKey(name: 'expirate_date') DateTime expireDate,
      int quantity,
      @JsonKey(name: 'id_status') int status});
}

/// @nodoc
class __$CupboardCopyWithImpl<$Res> extends _$CupboardCopyWithImpl<$Res>
    implements _$CupboardCopyWith<$Res> {
  __$CupboardCopyWithImpl(_Cupboard _value, $Res Function(_Cupboard) _then)
      : super(_value, (v) => _then(v as _Cupboard));

  @override
  _Cupboard get _value => super._value as _Cupboard;

  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
    Object? expireDate = freezed,
    Object? quantity = freezed,
    Object? status = freezed,
  }) {
    return _then(_Cupboard(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as int,
      expireDate: expireDate == freezed
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cupboard implements _Cupboard {
  _$_Cupboard(
      {this.id,
      @JsonKey(name: 'id_product') required this.product,
      @JsonKey(name: 'expirate_date') required this.expireDate,
      required this.quantity,
      @JsonKey(name: 'id_status') required this.status});

  factory _$_Cupboard.fromJson(Map<String, dynamic> json) =>
      _$$_CupboardFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'id_product')
  final int product;
  @override
  @JsonKey(name: 'expirate_date')
  final DateTime expireDate;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'id_status')
  final int status;

  @override
  String toString() {
    return 'Cupboard(id: $id, product: $product, expireDate: $expireDate, quantity: $quantity, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cupboard &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.expireDate, expireDate) ||
                const DeepCollectionEquality()
                    .equals(other.expireDate, expireDate)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(expireDate) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$CupboardCopyWith<_Cupboard> get copyWith =>
      __$CupboardCopyWithImpl<_Cupboard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CupboardToJson(this);
  }
}

abstract class _Cupboard implements Cupboard {
  factory _Cupboard(
      {int? id,
      @JsonKey(name: 'id_product') required int product,
      @JsonKey(name: 'expirate_date') required DateTime expireDate,
      required int quantity,
      @JsonKey(name: 'id_status') required int status}) = _$_Cupboard;

  factory _Cupboard.fromJson(Map<String, dynamic> json) = _$_Cupboard.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'id_product')
  int get product => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'expirate_date')
  DateTime get expireDate => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'id_status')
  int get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CupboardCopyWith<_Cupboard> get copyWith =>
      throw _privateConstructorUsedError;
}
