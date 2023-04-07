import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_rate.freezed.dart';
part 'exchange_rate.g.dart';

@freezed
class ExchangeRate with _$ExchangeRate {
  factory ExchangeRate({
    @Default('') String code,
    @Default([]) List<double> rates,
    @Default(false) bool isRising,
  }) = _ExchangeRate;
  factory ExchangeRate.fromJson(Map<String, dynamic> json) =>
      _$ExchangeRateFromJson(json);
}
