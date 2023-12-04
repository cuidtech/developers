import 'package:flutter/material.dart';

import 'ExchangeRate.dart';
import 'ExchangeRatesDetail.dart';
import 'NetworkService.dart';

class ExchangeRatesListSuccessBody extends StatelessWidget {
  final List<ExchangeRate> exchangeRates;
  final NetworkService networkService;

  const ExchangeRatesListSuccessBody(this.exchangeRates, this.networkService);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: exchangeRates.length,
      itemBuilder: (context, index) {
        final currency = exchangeRates[index];
        return ListTile(
          title: Text(currency.code),
          subtitle: Text('Latest Rate: ${currency.rates.last}'),
          trailing: _buildChangeIndicator(currency.getRisingFactor()),
          onTap: () {
            // Navigate to the detail screen when tapped
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ExchangeRateDetail(currency.code, networkService),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildChangeIndicator(int change) {
    // Logic to determine and display the change indicator
    return Icon(
      change == 0
          ? Icons.horizontal_rule
          : change == 1
              ? Icons.arrow_upward
              : Icons.arrow_downward,
      color: change == 0
          ? Colors.grey
          : change == 1
              ? Colors.green
              : Colors.red,
    );
  }
}
