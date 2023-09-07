import 'package:app/exchange_rate/model/exchange_rate.dart';
import 'package:app/exchange_rate/widget/exchange_rate_detail.widget.dart';
import 'package:app/exchange_rate/widget/exchange_rate_tile.widget.dart';
import 'package:app/exchange_rate/widget/exchange_rates_builder.widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ExchangeRateDetailWidget', () {
    final rates = [
      ExchangeRate(code: 'EUR', description: 'Test Rate', rates: [1.0, 2.0]),
      ExchangeRate(code: 'USD', description: 'Test Rate', rates: [1.0, 2.0]),
      ExchangeRate(code: 'AUD', description: 'Test Rate', rates: [1.0, 2.0])
    ];
    testWidgets('builds the list of rates', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(body: ExchangeRatesBuilderWidget(exchangeRates: rates)),
      ));

      expect(find.byType(ExchangeRateTile), findsNWidgets(3));
    });
  });
}
