import 'package:app/exchange_rate/model/exchange_rate.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const code = 'EUR';
  const description = 'Some very long description';
  const rates = [1, 2, 3];

  group('ExchangeRate model', () {
    group('fromJson factory', () {
      test('should create correctly', () {
        var obj = {'code': code, 'description': description, 'rates': rates};

        final rate = ExchangeRate.fromJson(obj);

        expect(rate.code, code);
        expect(rate.description, description);
        expect(rate.rates, [1.0, 2.0, 3.0]);
      });
    });

    group('lastDelta', () {
      test('should return 0 if less than two rates', () {
        var obj = {
          'code': code,
          'description': description,
          'rates': [1]
        };

        final rate = ExchangeRate.fromJson(obj);

        expect(rate.lastDelta, 0);
      });

      test('should return positive number if growing', () {
        var obj = {'code': code, 'description': description, 'rates': rates};

        final rate = ExchangeRate.fromJson(obj);

        expect(rate.lastDelta > 0, true);
      });

      test('should return negative number if decreasing', () {
        var obj = {
          'code': code,
          'description': description,
          'rates': [1, 3, 2]
        };

        final rate = ExchangeRate.fromJson(obj);

        expect(rate.lastDelta < 0, true);
      });
    });
  });
}
