import 'package:app/exchange_rate/model/exchange_rate.dart';
import 'package:app/exchange_rate/widget/exchange_rate_detail.widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ExchangeRateDetailWidget', () {
    final rate =
        ExchangeRate(code: 'EUR', description: 'Test Rate', rates: [1.0, 2.0]);
    testWidgets('displays correctly the description', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: ExchangeRateDetailWidget(rate: rate),
      ));

      expect(find.text('Test Rate'), findsOneWidget);
    });

    testWidgets('generates the linechart', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: ExchangeRateDetailWidget(rate: rate),
      ));

      expect(find.byType(LineChart), findsOneWidget);
    });
  });
}
