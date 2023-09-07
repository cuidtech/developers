import 'package:app/exchange_rate/exchange_rate_detail.page.dart';
import 'package:app/exchange_rate/model/exchange_rate.dart';
import 'package:app/exchange_rate/widget/exchange_rate_detail.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ExchangeRateDetailWidget', () {
    final rate =
        ExchangeRate(code: 'EUR', description: 'Test Rate', rates: [1.0, 2.0]);
    testWidgets('builds the list of rates', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: ExchangeRateDetailPage(rate: rate),
      ));

      expect(find.text('EUR'), findsOneWidget);
      expect(find.byType(ExchangeRateDetailWidget), findsOneWidget);
    });
  });
}
