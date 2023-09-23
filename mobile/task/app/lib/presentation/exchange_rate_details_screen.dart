import 'package:app/presentation/providers/exchange_provider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExchangeRateDetails extends ConsumerWidget {
  static String routeName = "/details";

  const ExchangeRateDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rateState = ref.watch(selectedRateProvider);
    Widget detailsView = const Center(child: CircularProgressIndicator());

    if (!rateState.loading && rateState.selectedRate != null) {
      var exchangeRate = rateState.selectedRate!;

      detailsView = SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                exchangeRate.code,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                exchangeRate.desc,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text(
                'Exchange Rate History',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 300,
                child: LineChart(
                  LineChartData(
                    lineTouchData: const LineTouchData(
                        enabled: true,
                        touchTooltipData: LineTouchTooltipData(
                          tooltipBgColor: Colors.black,
                          tooltipRoundedRadius: 20.0,
                          showOnTopOfTheChartBoxArea: true,
                          fitInsideHorizontally: true,
                          tooltipMargin: 0,
                        )),
                    gridData: const FlGridData(show: true),
                    titlesData: const FlTitlesData(
                      show: false,
                      rightTitles: AxisTitles(),
                      topTitles: AxisTitles(),
                    ),
                    borderData: FlBorderData(
                      show: false,
                      border: Border.all(
                        color: Colors.black38,
                        width: 1,
                      ),
                    ),
                    lineBarsData: [
                      LineChartBarData(
                        spots: exchangeRate.rates
                            .asMap()
                            .entries
                            .map((entry) => FlSpot(entry.key.toDouble(),
                                double.parse(entry.value.toStringAsFixed(2))))
                            .toList(),
                        isCurved: true,
                        dotData: const FlDotData(show: false),
                        belowBarData: BarAreaData(show: false),
                      ),
                    ],
                  ),
                  curve: Curves.linear,
                  duration: const Duration(milliseconds: 150),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // Navigate back to the previous screen when the back button is pressed.
              Navigator.of(context).pop();
            },
          ),
        ),
        body: detailsView);
  }
}
