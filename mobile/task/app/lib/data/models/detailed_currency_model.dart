import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/detailed_currency.dart';

part 'detailed_currency_model.freezed.dart';
part 'detailed_currency_model.g.dart';

@freezed
class DetailedCurrencyModel with _$DetailedCurrencyModel {
  const DetailedCurrencyModel._();

  const factory DetailedCurrencyModel({
    required String code,
    required String description,
    required List<double> rates,
  }) = _DetailedCurrencyModel;

  factory DetailedCurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$DetailedCurrencyModelFromJson(json);

  /// Converts a [DetailedCurrencyModel] to a [DetailedCurrency].
  DetailedCurrency toDetailedCurrency() => DetailedCurrency(
        code: code,
        description: description,
        rates: rates,
      );
}
