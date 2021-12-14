// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoriesEventTearOff {
  const _$CategoriesEventTearOff();

  _Started started() {
    return const _Started();
  }

  _AddCategorie addCategorie() {
    return const _AddCategorie();
  }
}

/// @nodoc
const $CategoriesEvent = _$CategoriesEventTearOff();

/// @nodoc
mixin _$CategoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() addCategorie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? addCategorie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? addCategorie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCategorie value) addCategorie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCategorie value)? addCategorie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCategorie value)? addCategorie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEventCopyWith<$Res> {
  factory $CategoriesEventCopyWith(
          CategoriesEvent value, $Res Function(CategoriesEvent) then) =
      _$CategoriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoriesEventCopyWithImpl<$Res>
    implements $CategoriesEventCopyWith<$Res> {
  _$CategoriesEventCopyWithImpl(this._value, this._then);

  final CategoriesEvent _value;
  // ignore: unused_field
  final $Res Function(CategoriesEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$CategoriesEventCopyWithImpl<$Res>
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
    return 'CategoriesEvent.started()';
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
    required TResult Function() addCategorie,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? addCategorie,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? addCategorie,
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
    required TResult Function(_AddCategorie value) addCategorie,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCategorie value)? addCategorie,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCategorie value)? addCategorie,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CategoriesEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$AddCategorieCopyWith<$Res> {
  factory _$AddCategorieCopyWith(
          _AddCategorie value, $Res Function(_AddCategorie) then) =
      __$AddCategorieCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddCategorieCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res>
    implements _$AddCategorieCopyWith<$Res> {
  __$AddCategorieCopyWithImpl(
      _AddCategorie _value, $Res Function(_AddCategorie) _then)
      : super(_value, (v) => _then(v as _AddCategorie));

  @override
  _AddCategorie get _value => super._value as _AddCategorie;
}

/// @nodoc

class _$_AddCategorie implements _AddCategorie {
  const _$_AddCategorie();

  @override
  String toString() {
    return 'CategoriesEvent.addCategorie()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddCategorie);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() addCategorie,
  }) {
    return addCategorie();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? addCategorie,
  }) {
    return addCategorie?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? addCategorie,
    required TResult orElse(),
  }) {
    if (addCategorie != null) {
      return addCategorie();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCategorie value) addCategorie,
  }) {
    return addCategorie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCategorie value)? addCategorie,
  }) {
    return addCategorie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCategorie value)? addCategorie,
    required TResult orElse(),
  }) {
    if (addCategorie != null) {
      return addCategorie(this);
    }
    return orElse();
  }
}

abstract class _AddCategorie implements CategoriesEvent {
  const factory _AddCategorie() = _$_AddCategorie;
}

/// @nodoc
class _$CategoriesStateTearOff {
  const _$CategoriesStateTearOff();

  _Initial initial(List<Categorie>? categories) {
    return _Initial(
      categories,
    );
  }

  _IsLoading isLoading() {
    return const _IsLoading();
  }

  _Saved saved(List<Categorie>? categories) {
    return _Saved(
      categories,
    );
  }

  _Failed failed(String? error) {
    return _Failed(
      error,
    );
  }
}

/// @nodoc
const $CategoriesState = _$CategoriesStateTearOff();

/// @nodoc
mixin _$CategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Categorie>? categories) initial,
    required TResult Function() isLoading,
    required TResult Function(List<Categorie>? categories) saved,
    required TResult Function(String? error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Categorie>? categories)? initial,
    TResult Function()? isLoading,
    TResult Function(List<Categorie>? categories)? saved,
    TResult Function(String? error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Categorie>? categories)? initial,
    TResult Function()? isLoading,
    TResult Function(List<Categorie>? categories)? saved,
    TResult Function(String? error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Saved value)? saved,
    TResult Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Saved value)? saved,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  final CategoriesState _value;
  // ignore: unused_field
  final $Res Function(CategoriesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  $Res call({List<Categorie>? categories});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CategoriesStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_Initial(
      categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Categorie>?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.categories);

  @override
  final List<Categorie>? categories;

  @override
  String toString() {
    return 'CategoriesState.initial(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Categorie>? categories) initial,
    required TResult Function() isLoading,
    required TResult Function(List<Categorie>? categories) saved,
    required TResult Function(String? error) failed,
  }) {
    return initial(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Categorie>? categories)? initial,
    TResult Function()? isLoading,
    TResult Function(List<Categorie>? categories)? saved,
    TResult Function(String? error)? failed,
  }) {
    return initial?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Categorie>? categories)? initial,
    TResult Function()? isLoading,
    TResult Function(List<Categorie>? categories)? saved,
    TResult Function(String? error)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Saved value)? saved,
    TResult Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Saved value)? saved,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CategoriesState {
  const factory _Initial(List<Categorie>? categories) = _$_Initial;

  List<Categorie>? get categories => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IsLoadingCopyWith<$Res> {
  factory _$IsLoadingCopyWith(
          _IsLoading value, $Res Function(_IsLoading) then) =
      __$IsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$IsLoadingCopyWithImpl<$Res> extends _$CategoriesStateCopyWithImpl<$Res>
    implements _$IsLoadingCopyWith<$Res> {
  __$IsLoadingCopyWithImpl(_IsLoading _value, $Res Function(_IsLoading) _then)
      : super(_value, (v) => _then(v as _IsLoading));

  @override
  _IsLoading get _value => super._value as _IsLoading;
}

/// @nodoc

class _$_IsLoading implements _IsLoading {
  const _$_IsLoading();

  @override
  String toString() {
    return 'CategoriesState.isLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Categorie>? categories) initial,
    required TResult Function() isLoading,
    required TResult Function(List<Categorie>? categories) saved,
    required TResult Function(String? error) failed,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Categorie>? categories)? initial,
    TResult Function()? isLoading,
    TResult Function(List<Categorie>? categories)? saved,
    TResult Function(String? error)? failed,
  }) {
    return isLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Categorie>? categories)? initial,
    TResult Function()? isLoading,
    TResult Function(List<Categorie>? categories)? saved,
    TResult Function(String? error)? failed,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Failed value) failed,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Saved value)? saved,
    TResult Function(_Failed value)? failed,
  }) {
    return isLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Saved value)? saved,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _IsLoading implements CategoriesState {
  const factory _IsLoading() = _$_IsLoading;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
  $Res call({List<Categorie>? categories});
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$CategoriesStateCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(_Saved(
      categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Categorie>?,
    ));
  }
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved(this.categories);

  @override
  final List<Categorie>? categories;

  @override
  String toString() {
    return 'CategoriesState.saved(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Saved &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  _$SavedCopyWith<_Saved> get copyWith =>
      __$SavedCopyWithImpl<_Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Categorie>? categories) initial,
    required TResult Function() isLoading,
    required TResult Function(List<Categorie>? categories) saved,
    required TResult Function(String? error) failed,
  }) {
    return saved(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Categorie>? categories)? initial,
    TResult Function()? isLoading,
    TResult Function(List<Categorie>? categories)? saved,
    TResult Function(String? error)? failed,
  }) {
    return saved?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Categorie>? categories)? initial,
    TResult Function()? isLoading,
    TResult Function(List<Categorie>? categories)? saved,
    TResult Function(String? error)? failed,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Failed value) failed,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Saved value)? saved,
    TResult Function(_Failed value)? failed,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Saved value)? saved,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements CategoriesState {
  const factory _Saved(List<Categorie>? categories) = _$_Saved;

  List<Categorie>? get categories => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SavedCopyWith<_Saved> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$CategoriesStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Failed(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'CategoriesState.failed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Categorie>? categories) initial,
    required TResult Function() isLoading,
    required TResult Function(List<Categorie>? categories) saved,
    required TResult Function(String? error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Categorie>? categories)? initial,
    TResult Function()? isLoading,
    TResult Function(List<Categorie>? categories)? saved,
    TResult Function(String? error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Categorie>? categories)? initial,
    TResult Function()? isLoading,
    TResult Function(List<Categorie>? categories)? saved,
    TResult Function(String? error)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsLoading value) isLoading,
    required TResult Function(_Saved value) saved,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Saved value)? saved,
    TResult Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsLoading value)? isLoading,
    TResult Function(_Saved value)? saved,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements CategoriesState {
  const factory _Failed(String? error) = _$_Failed;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}
