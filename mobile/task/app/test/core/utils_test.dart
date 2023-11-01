import 'package:app/core/utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('utils', () {
    group('MoneyExtension', () {
      test(
        'toMoneyString should parse to a string money representation with two decimal places',
        () {
          const money = 1.2345;
          const expected = '\$1.23';

          final actual = money.toMoneyString();

          expect(actual, equals(expected));
        },
      );
    });
  });
}
