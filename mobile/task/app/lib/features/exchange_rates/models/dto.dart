import 'package:app/features/exchange_rates/models/exchange_rate.dart';

import '../data_sources/graphql/__generated__/exchange_rate.data.gql.dart';
import '../data_sources/graphql/__generated__/exchange_rates.data.gql.dart';

ExchangeRate fromRemoteRateData(GExchangeRatesData_exchangeRates data) {
  return ExchangeRate(
    code: data.code,
    description: '',
    rates: data.rates.toList(),
  );
}

ExchangeRate? fromRemoteRatesData(GExchangeRateData_exchangeRate? data) {
  if (data != null) {
    return ExchangeRate(
      code: data.code,
      description: data.description,
      rates: data.rates.toList(),
    );
  }
  return null;
}
