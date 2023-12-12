// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RateDetailEntityImpl _$$RateDetailEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$RateDetailEntityImpl(
      code: json['code'] as String?,
      description: json['description'] as String?,
      rates: (json['rates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$RateDetailEntityImplToJson(
        _$RateDetailEntityImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'rates': instance.rates,
    };
