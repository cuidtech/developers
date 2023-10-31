import 'package:app/data/models/currency_model.dart';
import 'package:app/data/models/detailed_currency_model.dart';

import 'mock_data.dart';

CurrencyModel createCurrencyModel({
  String code = code,
  List<double> rates = partialRates,
}) {
  return CurrencyModel(
    code: code,
    rates: rates,
  );
}

DetailedCurrencyModel createDetailedCurrencyModel({
  String code = code,
  String description = description,
  List<double> rates = rates,
}) {
  return DetailedCurrencyModel(
    code: code,
    description: description,
    rates: rates,
  );
}
