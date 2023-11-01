import 'package:app/data/models/currency_model.dart';
import 'package:app/data/models/detailed_currency_model.dart';

import 'package:app/core/fake_data.dart';

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
  String description = description,
  List<double> rates = rates,
}) {
  return DetailedCurrencyModel(
    description: description,
    rates: rates,
  );
}
