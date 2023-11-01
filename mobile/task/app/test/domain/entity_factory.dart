import 'package:app/core/utils.dart';
import 'package:app/domain/entities/currency.dart';
import 'package:app/domain/entities/detailed_currency.dart';

import '../data/mock_data.dart';

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
  String code = code,
  String description = description,
  List<double> rates = rates,
}) {
  return DetailedCurrency(
    code: code,
    description: description,
    rates: rates,
  );
}
