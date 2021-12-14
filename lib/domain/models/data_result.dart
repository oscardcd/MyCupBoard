import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_result.freezed.dart';

@freezed
class DataResult<T> with _$DataResult<T> {
  factory DataResult.success({required T data}) = Success<T>;
  factory DataResult.failure({required Exception error}) = Fairule<T>;
}
