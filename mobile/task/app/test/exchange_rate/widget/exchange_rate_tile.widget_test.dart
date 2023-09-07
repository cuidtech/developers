import 'package:app/exchange_rate/exchange_rate_detail.page.dart';
import 'package:app/exchange_rate/model/exchange_rate.dart';
import 'package:app/exchange_rate/widget/exchange_rate_tile.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ExchangeRateTile', () {
    final rate =
        ExchangeRate(code: 'EUR', description: 'Test Rate', rates: [1.0, 2.0]);
    testWidgets('test rate with positive delta', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ListView(
            children: [
              ExchangeRateTile(rate: rate),
            ],
          ),
        ),
      ));

      expect(find.text('EUR'), findsOneWidget);
      expect(find.text('2.0'), findsOneWidget);
      expect(find.byIcon(Icons.arrow_upward), findsOneWidget);
      expect(find.byIcon(Icons.arrow_downward), findsNothing);
    });

    testWidgets('test rate with negative delta', (tester) async {
      final rateWithNegativeDelta = ExchangeRate(
          code: 'EUR', description: 'Test Rate', rates: [3.0, 2.0]);

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ListView(
            children: [
              ExchangeRateTile(rate: rateWithNegativeDelta),
            ],
          ),
        ),
      ));

      expect(find.text('EUR'), findsOneWidget);
      expect(find.text('2.0'), findsOneWidget);
      expect(find.byIcon(Icons.arrow_downward), findsOneWidget);
      expect(find.byIcon(Icons.arrow_upward), findsNothing);
    });

    testWidgets('test rate with zero delta', (tester) async {
      final rateWithNegativeDelta = ExchangeRate(
          code: 'EUR', description: 'Test Rate', rates: [3.0, 3.0]);

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ListView(
            children: [
              ExchangeRateTile(rate: rateWithNegativeDelta),
            ],
          ),
        ),
      ));

      expect(find.text('EUR'), findsOneWidget);
      expect(find.text('3.0'), findsOneWidget);
      expect(find.text('-'), findsOneWidget);
      expect(find.byIcon(Icons.arrow_downward), findsNothing);
      expect(find.byIcon(Icons.arrow_upward), findsNothing);
    });

    testWidgets('click should take you to detailed rate', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ListView(
            children: [
              ExchangeRateTile(rate: rate),
            ],
          ),
        ),
      ));

      await tester.tap(find.byType(ExchangeRateTile));
      await tester.pumpAndSettle();

      expect(find.byType(ExchangeRateDetailPage), findsOneWidget);
    });
  });
}
