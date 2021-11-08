// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DataResultTearOff {
  const _$DataResultTearOff();

  Success<T> success<T>({required T data}) {
    return Success<T>(
      data: data,
    );
  }

  Fairule<T> failure<T>({required Exception error}) {
    return Fairule<T>(
      error: error,
    );
  }
}

/// @nodoc
const $DataResult = _$DataResultTearOff();

/// @nodoc
mixin _$DataResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Exception error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Exception error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Exception error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(Fairule<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(Fairule<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(Fairule<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataResultCopyWith<T, $Res> {
  factory $DataResultCopyWith(
          DataResult<T> value, $Res Function(DataResult<T>) then) =
      _$DataResultCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$DataResultCopyWithImpl<T, $Res>
    implements $DataResultCopyWith<T, $Res> {
  _$DataResultCopyWithImpl(this._value, this._then);

  final DataResult<T> _value;
  // ignore: unused_field
  final $Res Function(DataResult<T>) _then;
}

/// @nodoc
abstract class $SuccessCopyWith<T, $Res> {
  factory $SuccessCopyWith(Success<T> value, $Res Function(Success<T>) then) =
      _$SuccessCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class _$SuccessCopyWithImpl<T, $Res> extends _$DataResultCopyWithImpl<T, $Res>
    implements $SuccessCopyWith<T, $Res> {
  _$SuccessCopyWithImpl(Success<T> _value, $Res Function(Success<T>) _then)
      : super(_value, (v) => _then(v as Success<T>));

  @override
  Success<T> get _value => super._value as Success<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Success<T>(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Success<T> implements Success<T> {
  _$Success({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'DataResult<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<T, Success<T>> get copyWith =>
      _$SuccessCopyWithImpl<T, Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Exception error) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Exception error)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Exception error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(Fairule<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(Fairule<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(Fairule<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements DataResult<T> {
  factory Success({required T data}) = _$Success<T>;

  T get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessCopyWith<T, Success<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FairuleCopyWith<T, $Res> {
  factory $FairuleCopyWith(Fairule<T> value, $Res Function(Fairule<T>) then) =
      _$FairuleCopyWithImpl<T, $Res>;
  $Res call({Exception error});
}

/// @nodoc
class _$FairuleCopyWithImpl<T, $Res> extends _$DataResultCopyWithImpl<T, $Res>
    implements $FairuleCopyWith<T, $Res> {
  _$FairuleCopyWithImpl(Fairule<T> _value, $Res Function(Fairule<T>) _then)
      : super(_value, (v) => _then(v as Fairule<T>));

  @override
  Fairule<T> get _value => super._value as Fairule<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Fairule<T>(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$Fairule<T> implements Fairule<T> {
  _$Fairule({required this.error});

  @override
  final Exception error;

  @override
  String toString() {
    return 'DataResult<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Fairule<T> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $FairuleCopyWith<T, Fairule<T>> get copyWith =>
      _$FairuleCopyWithImpl<T, Fairule<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(Exception error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Exception error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(Exception error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<T> value) success,
    required TResult Function(Fairule<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(Fairule<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<T> value)? success,
    TResult Function(Fairule<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Fairule<T> implements DataResult<T> {
  factory Fairule({required Exception error}) = _$Fairule<T>;

  Exception get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FairuleCopyWith<T, Fairule<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
