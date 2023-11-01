import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../core/utils.dart';

class RateChart extends StatelessWidget {
  const RateChart(
    this.rates, {
    super.key,
  });

  final List<double> rates;

  /// Converts a [List] of [double] to a [List] of [FlSpot].
  List<FlSpot> get spots {
    return rates
        .asMap()
        .map((index, rate) => MapEntry(index, FlSpot(index.toDouble(), rate)))
        .values
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    const hiddenTitles = AxisTitles(sideTitles: SideTitles(showTitles: false));

    return LineChart(
      LineChartData(
        lineTouchData: LineTouchData(
          enabled: true,
          touchTooltipData: LineTouchTooltipData(
            tooltipBgColor: Colors.blueGrey,
            getTooltipItems: (touchedSpots) => touchedSpots
                .map(
                  (touchedSpot) => LineTooltipItem(
                    touchedSpot.y.toMoneyString(),
                    Theme.of(context).textTheme.bodyLarge!,
                  ),
                )
                .toList(),
          ),
        ),
        titlesData: FlTitlesData(
          show: true,
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 40,
              interval: 10,
              getTitlesWidget: (value, meta) => Text(value.toMoneyString(0)),
            ),
          ),
          topTitles: hiddenTitles,
          rightTitles: hiddenTitles,
          bottomTitles: hiddenTitles,
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(color: Colors.grey.shade800),
        ),
        lineBarsData: [
          LineChartBarData(
            spots: spots,
            isCurved: false,
            color: Colors.blue,
            dotData: const FlDotData(show: false),
            barWidth: 3,
            isStrokeCapRound: true,
            belowBarData: BarAreaData(
              show: true,
              color: Colors.blue.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
