// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rates_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatesModelImpl _$$RatesModelImplFromJson(Map<String, dynamic> json) =>
    _$RatesModelImpl(
      code: json['code'] as String?,
      description: json['description'] as String?,
      rates: (json['rates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$RatesModelImplToJson(_$RatesModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'rates': instance.rates,
    };
