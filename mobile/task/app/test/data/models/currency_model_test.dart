import 'package:flutter_test/flutter_test.dart';

import '../mock_data.dart';
import '../model_factory.dart';

void main() {
  group('currency model', () {
    test('toCurrency should parse to Currency', () {
      final currencyModel = createCurrencyModel();

      final currency = currencyModel.toCurrency();

      expect(currency.code, equals(code));
      expect(currency.currentExchangeRate, equals(partialRates.last));
      expect(currency.isAppreciating, equals(false));
    });
  });
}
