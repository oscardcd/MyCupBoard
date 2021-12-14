// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categorie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Categorie _$CategorieFromJson(Map<String, dynamic> json) {
  return _Categorie.fromJson(json);
}

/// @nodoc
class _$CategorieTearOff {
  const _$CategorieTearOff();

  _Categorie call({int? id, required String name}) {
    return _Categorie(
      id: id,
      name: name,
    );
  }

  Categorie fromJson(Map<String, Object> json) {
    return Categorie.fromJson(json);
  }
}

/// @nodoc
const $Categorie = _$CategorieTearOff();

/// @nodoc
mixin _$Categorie {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategorieCopyWith<Categorie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategorieCopyWith<$Res> {
  factory $CategorieCopyWith(Categorie value, $Res Function(Categorie) then) =
      _$CategorieCopyWithImpl<$Res>;
  $Res call({int? id, String name});
}

/// @nodoc
class _$CategorieCopyWithImpl<$Res> implements $CategorieCopyWith<$Res> {
  _$CategorieCopyWithImpl(this._value, this._then);

  final Categorie _value;
  // ignore: unused_field
  final $Res Function(Categorie) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CategorieCopyWith<$Res> implements $CategorieCopyWith<$Res> {
  factory _$CategorieCopyWith(
          _Categorie value, $Res Function(_Categorie) then) =
      __$CategorieCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String name});
}

/// @nodoc
class __$CategorieCopyWithImpl<$Res> extends _$CategorieCopyWithImpl<$Res>
    implements _$CategorieCopyWith<$Res> {
  __$CategorieCopyWithImpl(_Categorie _value, $Res Function(_Categorie) _then)
      : super(_value, (v) => _then(v as _Categorie));

  @override
  _Categorie get _value => super._value as _Categorie;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Categorie(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Categorie implements _Categorie {
  _$_Categorie({this.id, required this.name});

  factory _$_Categorie.fromJson(Map<String, dynamic> json) =>
      _$$_CategorieFromJson(json);

  @override
  final int? id;
  @override
  final String name;

  @override
  String toString() {
    return 'Categorie(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Categorie &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$CategorieCopyWith<_Categorie> get copyWith =>
      __$CategorieCopyWithImpl<_Categorie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategorieToJson(this);
  }
}

abstract class _Categorie implements Categorie {
  factory _Categorie({int? id, required String name}) = _$_Categorie;

  factory _Categorie.fromJson(Map<String, dynamic> json) =
      _$_Categorie.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategorieCopyWith<_Categorie> get copyWith =>
      throw _privateConstructorUsedError;
}
