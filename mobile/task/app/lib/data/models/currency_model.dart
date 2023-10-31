import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/currency.dart';

part 'currency_model.freezed.dart';
part 'currency_model.g.dart';

@freezed
class CurrencyModel with _$CurrencyModel {
  const CurrencyModel._();

  const factory CurrencyModel({
    required String code,
    required List<double> rates,
  }) = _CurrencyModel;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);

  /// Converts a [CurrencyModel] to a [Currency].
  /// NOTE: This implementation considers the last rate as the current exchange rate.
  Currency toCurrency() => Currency(
        code: code,
        currentExchangeRate: rates.last,
        isAppreciating: rates.last > rates.first,
      );
}

extension CurrencyModelListExtension on List<CurrencyModel> {
  List<Currency> toCurrencyList() => map((e) => e.toCurrency()).toList();
}
