// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_rate_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExchangeRateDetail _$$_ExchangeRateDetailFromJson(
  Map<String, dynamic> json,
) =>
    _$_ExchangeRateDetail(
      code: json['code'] as String? ?? '',
      description: json['description'] as String? ?? '',
      rates: (json['rates'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ExchangeRateDetailToJson(
  _$_ExchangeRateDetail instance,
) =>
    <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'rates': instance.rates,
    };
