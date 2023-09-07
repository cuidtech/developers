import 'package:app/exchange_rate/model/exchange_rate.dart';
import 'package:app/exchange_rate/widget/exchange_rate_detail.widget.dart';
import 'package:app/page.widget.dart';
import 'package:flutter/material.dart';

class ExchangeRateDetailPage extends StatelessWidget {
  const ExchangeRateDetailPage({super.key, required this.rate});

  final ExchangeRate rate;

  @override
  Widget build(BuildContext context) {
    return PageWidget(
        title: rate.code, child: ExchangeRateDetailWidget(rate: rate));
  }
}
