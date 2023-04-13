import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  dynamic currency;
  SampleItemDetailsView({super.key, this.currency});

  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
    String rateQuery = '''
query rate(\$code: String!) {
  exchangeRate(code: \$code) {
rates
code
  }
}''';

    return Scaffold(
      appBar: AppBar(
        title: Text('${currency['code']}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Query(
            options: QueryOptions(
              document: gql(rateQuery),
              variables: {
                'code': currency['code'],
              },
              pollInterval: const Duration(seconds: 5),
            ),
            builder: (result, {fetchMore, refetch}) {
              if (result.hasException) {
                return Text(result.exception.toString());
              }

              if (result.isLoading) {
                return const Text('Loading');
              }

              List? rate = result.data?['exchangeRate']['rates'];

              if (rate == null) {
                return const Text('No rate');
              }

              int maxY = 0;
              int minY = 0;
              List<FlSpot> flspots = [];
              var _ff = (rate).asMap().entries.forEach((element) {
                if (element.value.toInt() > maxY) maxY = element.value.toInt();
                if (element.value.toInt() < minY) minY = element.value.toInt();
                flspots
                    .add(FlSpot(double.parse('${element.key}'), element.value));
              });
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 7,
                    child: LineChart(
                      LineChartData(
                        lineTouchData: LineTouchData(enabled: false),
                        lineBarsData: [
                          LineChartBarData(
                            spots: flspots,
                            isCurved: true,
                            dotData: FlDotData(
                              show: false,
                            ),
                          ),
                        ],
                        minY: minY + minY * 0.2,
                        maxY: maxY + maxY * 0.2,
                        maxX: flspots.length.toDouble(),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Center(
                      child: Text(
                        '${currency['description']}',
                        style: const TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
