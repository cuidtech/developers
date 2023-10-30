import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_currency.freezed.dart';

@freezed
class DetailedCurrency with _$DetailedCurrency {
  const factory DetailedCurrency({
    required String code,
    required String description,
    required List<double> rates,
  }) = _DetailedCurrency;
}
