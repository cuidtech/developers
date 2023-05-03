import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class DetailsScreenArguments {
  final String code;
  DetailsScreenArguments({
    required this.code,
  });
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  static const routeName = '/details';

  static String readExchangeRate = """
  query GetExchangeRate(\$code: String!, \$hLength: Float) {
    exchangeRate(code: \$code, historyLength: \$hLength) {
      code,
      description,
      rates,
    }
  }
""";

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as DetailsScreenArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.code),
      ),
      body: Query(
        options: QueryOptions(
          document: gql(readExchangeRate),
          variables: {
            'code': args.code,
          },
        ),
        builder: (
          QueryResult result, {
          VoidCallback? refetch,
          FetchMore? fetchMore,
        }) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          if (result.isLoading) {
            return const Text('Loading');
          }
          final exchangeRate = result.data?['exchangeRate'];

          if (exchangeRate == null) {
            return const Center(
              child: Text('No data to show'),
            );
          }
          final List<double> rates = List.from(
              (exchangeRate['rates'] ?? []).map((item) => item as double));

          final List<FlSpot> barData = List.from(rates.asMap().entries.map(
                (e) => FlSpot(e.key.toDouble(), e.value),
              ));
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (exchangeRate['description'] != null)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 32.0,
                  ),
                  child: Text(
                    exchangeRate['description'],
                    style: const TextStyle(
                      fontSize: 14,
                      height: 1.75,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              if (rates.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 16.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color.fromRGBO(0, 0, 0, 0.2),
                    ),
                    width: MediaQuery.of(context).size.width - 32,
                    height: MediaQuery.of(context).size.height - 480,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 32.0),
                      child: LineChart(LineChartData(
                        lineTouchData: LineTouchData(
                          enabled: false,
                        ),
                        titlesData: FlTitlesData(
                          show: false,
                        ),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        lineBarsData: [
                          LineChartBarData(
                            spots: barData,
                            isCurved: true,
                            barWidth: 4,
                            isStrokeCapRound: true,
                            dotData: FlDotData(
                              show: false,
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
