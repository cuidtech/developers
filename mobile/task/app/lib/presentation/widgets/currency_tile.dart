import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/currency.dart';
import '../screens/currency_detail_screen.dart';

class CurrencyTile extends StatelessWidget {
  const CurrencyTile(
    this.currency, {
    super.key,
  });

  final Currency currency;

  Icon get exchangeRateIcon => currency.isAppreciating
      ? const Icon(Icons.arrow_upward, color: Colors.green)
      : const Icon(Icons.arrow_downward, color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        currency.code,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            currency.currentExchangeRate,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(width: 8),
          exchangeRateIcon,
        ],
      ),
      onTap: () => Navigator.of(context).push(
        CupertinoPageRoute(
          builder: (context) => CurrencyDetailScreen(currency.code),
        ),
      ),
    );
  }
}
