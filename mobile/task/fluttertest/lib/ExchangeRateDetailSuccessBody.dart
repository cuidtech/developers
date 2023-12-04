import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/ExchangeRate.dart';

class ExchangeRateDetailSuccessBody extends StatelessWidget {
  final ExchangeRate exchangeRate;

  const ExchangeRateDetailSuccessBody(this.exchangeRate);

  @override
  Widget build(BuildContext context) {
    print("count: ${exchangeRate.rates}");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Currency Code: ${exchangeRate.code}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Description: ${exchangeRate.description}',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: LineChart(
              LineChartData(
                lineBarsData: [
                  LineChartBarData(
                    spots: _generateSpots(exchangeRate),
                    isCurved: true,
                    color: Colors.blue,
                    dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(show: false),
                  ),
                ],
                titlesData: FlTitlesData(),
                gridData: FlGridData(show: false),
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<FlSpot> _generateSpots(ExchangeRate exchangeRate) {
    // Generating FlSpot for the LineChart from historical data
    List<FlSpot> spots = [];
    for (int i = 0; i < exchangeRate.rates.length; i++) {
      spots.add(FlSpot(i.toDouble(), exchangeRate.rates[i]));
    }
    return spots;
  }
}
