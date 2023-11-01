import 'package:flutter_test/flutter_test.dart';

import 'package:app/core/fake_data.dart';
import '../model_factory.dart';

void main() {
  group('detailed currency model', () {
    test('toDetailedCurrency should parse to DetailedCurrency', () {
      final detailedCurrencyModel = createDetailedCurrencyModel();

      final detailedCurrency = detailedCurrencyModel.toDetailedCurrency();

      expect(detailedCurrency.description, equals(description));
      expect(detailedCurrency.rates, equals(rates));
    });
  });
}
