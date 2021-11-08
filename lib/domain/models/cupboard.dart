import 'package:freezed_annotation/freezed_annotation.dart';

part 'cupboard.freezed.dart';
part 'cupboard.g.dart';

@freezed
class Cupboard with _$Cupboard {
  factory Cupboard({
    int? id,
    @JsonKey(name: 'id_product') required int product,
    @JsonKey(name: 'expirate_date') required DateTime expireDate,
    required int quantity,
    @JsonKey(name: 'id_status') required int status,
  }) = _Cupboard;

  factory Cupboard.fromJson(Map<String, dynamic> json) => _$CupboardFromJson(json);
}
