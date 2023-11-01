import 'package:app/core/fake_data.dart';
import 'package:app/core/utils.dart';
import 'package:app/data/repositories/fake_currency_repository.dart';
import 'package:app/domain/currency_repository.dart';
import 'package:app/main.dart';
import 'package:app/presentation/screens/currency_detail_screen.dart';
import 'package:app/presentation/screens/home_screen.dart';
import 'package:app/presentation/widgets/currency_tile.dart';
import 'package:app/presentation/widgets/rate_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CurrencyExchange', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          // ignore: scoped_providers_should_specify_dependencies
          currencyRepositoryProvider.overrideWithValue(
            const FakeCurrencyRepository(),
          ),
        ],
        child: const CurrencyExchange(),
      ),
    );

    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.byType(HomeScreen), findsOneWidget);

    await tester.pump(const Duration(milliseconds: 30));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    expect(find.byType(CurrenciesList), findsNothing);

    await tester.pump(const Duration(milliseconds: 500));

    expect(find.byType(CurrenciesList), findsOneWidget);
    expect(find.byType(CurrencyTile), findsNWidgets(6));

    await tester.tap(find.byType(CurrencyTile).first);
    await tester.pumpAndSettle();

    expect(find.byType(CurrencyDetailScreen), findsOneWidget);
    expect(find.text(code), findsOneWidget);
    expect(find.text(rates.last.toMoneyString()), findsOneWidget);
    expect(find.byType(RateChart), findsOneWidget);
    expect(find.text(description), findsOneWidget);
  });
}
