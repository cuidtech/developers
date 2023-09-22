import 'package:app/data/exchange_graphql_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("GraphQL Tests", () {
    test('get all rates test', () async {
      final exchangeService = ExchangeService();

      var result = await exchangeService.getAllRates();

      expect(result.isNotEmpty, true);
    });

    test('get rate by code test', () async {
      final exchangeService = ExchangeService();

      var result = await exchangeService.getRateByCode("EUR");

      expect(result != null, true);
      expect(result!.code, "EUR");
      expect(result.rates.isNotEmpty, true);
    });
  });
}
