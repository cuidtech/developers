import 'package:app/core/utils.dart';
import 'package:app/domain/entities/currency.dart';
import 'package:app/domain/entities/detailed_currency.dart';

import 'package:app/core/fake_data.dart';

Currency createCurrency({
  String code = code,
  String? currentExchangeRate,
  bool isAppreciating = false,
}) {
  return Currency(
    code: code,
    currentExchangeRate: partialRates.last.toMoneyString(),
    isAppreciating: isAppreciating,
  );
}

DetailedCurrency createDetailedCurrency({
  String description = description,
  List<double> rates = rates,
}) {
  return DetailedCurrency(
    description: description,
    rates: rates,
  );
}
