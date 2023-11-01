import 'package:app/core/utils.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app/core/fake_data.dart';
import '../model_factory.dart';

void main() {
  group('currency model', () {
    test('toCurrency should parse to Currency', () {
      final currencyModel = createCurrencyModel();

      final currency = currencyModel.toCurrency();

      expect(currency.code, equals(code));
      expect(
        currency.currentExchangeRate,
        equals(partialRates.last.toMoneyString()),
      );
      expect(currency.isAppreciating, equals(false));
    });
  });
}
