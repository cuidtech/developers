import 'package:app/exchange_rate/model/exchange_rate.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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
              minX: -1,
              maxX: rate.rates.length * 1.0,
              maxY: (rate.rates.reduce(max) + 1).roundToDouble(),
              minY: (rate.rates.reduce(min) - 1).roundToDouble(),
              titlesData: const FlTitlesData(
                  bottomTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  topTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  rightTitles:
                      AxisTitles(sideTitles: SideTitles(showTitles: false))),
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
