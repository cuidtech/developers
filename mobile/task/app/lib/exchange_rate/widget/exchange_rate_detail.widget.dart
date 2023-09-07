import 'package:app/exchange_rate/model/exchange_rate.dart';
import 'package:flutter/material.dart';

class ExchangeRateDetailWidget extends StatelessWidget {
  const ExchangeRateDetailWidget({super.key, required this.rate});

  final ExchangeRate rate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(rate.description)],
    );
  }
}
