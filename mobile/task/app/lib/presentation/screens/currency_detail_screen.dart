import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/utils.dart';
import '../../domain/currency_repository.dart';
import '../../domain/entities/detailed_currency.dart';
import '../riverpod_extensions.dart';
import '../widgets/rate_chart.dart';

class CurrencyDetailScreen extends ConsumerWidget {
  const CurrencyDetailScreen(this.code, {super.key});

  static const routeName = '/currency-detail';

  final String code;

  @override
  Widget build(context, ref) {
    final currencyDetailState = ref.watch(getCurrencyDetailProvider(code));
    return Scaffold(
      appBar: AppBar(
        title: Text(code),
      ),
      body: currencyDetailState.renderWhen(
        (data) => CurrencyDetailColumn(data),
        onRetry: () => ref.refresh(getCurrencyDetailProvider(code)),
      ),
    );
  }
}

@visibleForTesting
class CurrencyDetailColumn extends StatelessWidget {
  const CurrencyDetailColumn(this.detailedCurrency, {super.key});

  final DetailedCurrency detailedCurrency;

  List<double> get rates => detailedCurrency.rates;

  bool get isAppreciating => rates.last > rates[rates.length - 2];

  Icon get exchangeRateIcon => isAppreciating
      ? const Icon(Icons.arrow_upward, color: Colors.green, size: 60)
      : const Icon(Icons.arrow_downward, color: Colors.red, size: 60);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    rates.last.toMoneyString(),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                exchangeRateIcon,
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: RateChart(detailedCurrency.rates),
            ),
            const SizedBox(height: 20),
            Text(detailedCurrency.description),
          ],
        ),
      ),
    );
  }
}
