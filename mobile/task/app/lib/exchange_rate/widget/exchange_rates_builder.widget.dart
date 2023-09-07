import 'package:app/exchange_rate/model/exchange_rate.dart';
import 'package:app/exchange_rate/widget/exchange_rate_tile.widget.dart';
import 'package:flutter/material.dart';

class ExchangeRatesBuilderWidget extends StatelessWidget {
  const ExchangeRatesBuilderWidget({super.key, required this.exchangeRates});

  final List<ExchangeRate> exchangeRates;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: exchangeRates.length,
        itemBuilder: (context, index) {
          final rate = exchangeRates.elementAt(index);

          return ExchangeRateTile(rate: rate);
        });
  }
}
