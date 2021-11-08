// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cupboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cupboard _$$_CupboardFromJson(Map<String, dynamic> json) => _$_Cupboard(
      id: json['id'] as int?,
      product: json['id_product'] as int,
      expireDate: DateTime.parse(json['expirate_date'] as String),
      quantity: json['quantity'] as int,
      status: json['id_status'] as int,
    );

Map<String, dynamic> _$$_CupboardToJson(_$_Cupboard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_product': instance.product,
      'expirate_date': instance.expireDate.toIso8601String(),
      'quantity': instance.quantity,
      'id_status': instance.status,
    };
