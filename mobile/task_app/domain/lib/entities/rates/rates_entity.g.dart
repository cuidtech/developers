// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rates_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatesEntityImpl _$$RatesEntityImplFromJson(Map<String, dynamic> json) =>
    _$RatesEntityImpl(
      code: json['code'] as String?,
      description: json['description'] as String?,
      rates: (json['rates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$RatesEntityImplToJson(_$RatesEntityImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'rates': instance.rates,
    };
