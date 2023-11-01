import 'package:app/core/fake_data.dart';
import 'package:app/data/repositories/fake_currency_repository.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../domain/entity_factory.dart';

void main() {
  group('fake currency repository', () {
    late FakeCurrencyRepository fakeCurrencyRepository;

    setUp(() {
      fakeCurrencyRepository = const FakeCurrencyRepository(100);
    });

    test('get currencies', () async {
      final currencies = await fakeCurrencyRepository.getCurrencies();
      expect(currencies.length, 6);
    });

    test('get currency detail', () async {
      final currency = await fakeCurrencyRepository.getCurrencyDetail(code);
      expect(currency, equals(createDetailedCurrency()));
    });
  });
}
