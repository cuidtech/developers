// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExchangeRate _$$_ExchangeRateFromJson(Map<String, dynamic> json) =>
    _$_ExchangeRate(
      code: json['code'] as String? ?? '',
      rates: (json['rates'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      isRising: json['isRising'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ExchangeRateToJson(_$_ExchangeRate instance) =>
    <String, dynamic>{
      'code': instance.code,
      'rates': instance.rates,
      'isRising': instance.isRising,
    };
