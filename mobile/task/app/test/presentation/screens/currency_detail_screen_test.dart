import 'package:app/core/utils.dart';
import 'package:app/domain/currency_repository.dart';
import 'package:app/presentation/screens/currency_detail_screen.dart';
import 'package:app/presentation/widgets/rate_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:app/core/mock_data.dart';
import '../../domain/entity_factory.dart';
import '../widget_test_utils.dart';

void main() {
  testWidgets('currency detail screen', (tester) async {
    await prepareAndSettle(
      tester,
      widget: const CurrencyDetailScreen(code),
      isConsumer: true,
      overrides: [
        getCurrencyDetailProvider(code).overrideWith(
          (provider) async => createDetailedCurrency(),
        )
      ],
    );

    expect(find.text(code), findsOneWidget);
    expect(find.byType(CurrencyDetailColumn), findsOneWidget);
    expect(find.text(rates.last.toMoneyString()), findsOneWidget);
    expect(find.byIcon(Icons.arrow_downward), findsOneWidget);
    expect(find.byType(RateChart), findsOneWidget);
    expect(find.text(description), findsOneWidget);
  });
}
