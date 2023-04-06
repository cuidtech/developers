import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_rate.freezed.dart';

@freezed
class ExchangeRate with _$ExchangeRate {
  const ExchangeRate._();
  const factory ExchangeRate({
    required String code,
    required String description,
    required List<double> rates,
  }) = _ExchangeRate;

  bool get isRising => rates[0] > rates[1];
}
