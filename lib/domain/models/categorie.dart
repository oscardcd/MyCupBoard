import 'package:freezed_annotation/freezed_annotation.dart';

part 'categorie.freezed.dart';
part 'categorie.g.dart';

@freezed
class Categorie with _$Categorie {
  factory Categorie({
    int? id,
    required String name,
  }) = _Categorie;

  factory Categorie.fromJson(Map<String, dynamic> json) => _$CategorieFromJson(json);
}
