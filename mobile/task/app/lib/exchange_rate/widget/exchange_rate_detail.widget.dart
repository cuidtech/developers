import 'package:app/exchange_rate/model/exchange_rate.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ExchangeRateDetailWidget extends StatelessWidget {
  const ExchangeRateDetailWidget({super.key, required this.rate});

  final ExchangeRate rate;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(rate.description),
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 200,
          child: LineChart(LineChartData(
              minX: 0,
              maxX: rate.rates.length * 1.0,
              lineBarsData: [
                LineChartBarData(
                    spots: rate.rates
                        .asMap()
                        .entries
                        .map((e) => FlSpot(e.key * 1.0, e.value))
                        .toList())
              ])),
        )
      ],
    );
  }
}
