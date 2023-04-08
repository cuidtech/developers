part of '../exchange_rate_details_screen.dart';

class _LineChart extends StatelessWidget {
  const _LineChart({required this.ratesList});

  final List<double> ratesList;
  @override
  Widget build(BuildContext context) {
    return Sparkline(
      kLine: const ['max', 'min', 'first', 'last'],
      lineColor: Colors.red,
      enableGridLines: true,
      enableThreshold: true,
      data: ratesList,
    );
  }
}
