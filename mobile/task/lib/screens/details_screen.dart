import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:fl_chart/fl_chart.dart';

class DetailsScreen extends StatelessWidget {
  final String currencyCode;
  const DetailsScreen({super.key, required this.currencyCode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currencyCode),
      ),
      body: Query(
          options: QueryOptions(
            document: gql(
              '''
      query {
      exchangeRate(code: "$currencyCode") {
        description,
        rates
      }
      }
      
                ''',
            ),
          ),
          builder: (QueryResult result, {VoidCallback? refetch, FetchMore? fetchMore}) {
            if (result.hasException) {
              return Text(result.exception.toString());
            }

            if (result.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            debugPrint(result.data.toString());
            final currency = result.data?['exchangeRate'];
            return Column(
              children: [
                SizedBox(
                  height: 250,
                  child: LineChart(
                    LineChartData(lineBarsData: [
                      LineChartBarData(spots: [
                        FlSpot(0, 1),
                        FlSpot(1, 2),
                        FlSpot(2, 3),
                      ])
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(currency['description'] ?? 'no description'),
                ),
              ],
            );
          }),
    );
  }
}
