import 'package:app/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/';

  static String readExchangeRates = """
  query GetExchangeRates(\$hLength: Float) {
    exchangeRates(historyLength: \$hLength) {
    code,
    rates,
    }
  }
  """;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exchange Rates'),
      ),
      body: Query(
        options: QueryOptions(
          document: gql(readExchangeRates),
          variables: const {
            'hLength': 2.0,
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
          final List? exchangeRates = result.data?['exchangeRates'];

          if (exchangeRates == null || exchangeRates.isEmpty) {
            return const Text('No exchange rates');
          }

          return ListView.builder(
            itemCount: exchangeRates.length,
            itemBuilder: (context, index) {
              final exchangeRate = exchangeRates[index];
              final rates = exchangeRate['rates'].toList();
              final isPositive =
                  rates != null && rates.isNotEmpty && rates.first > rates.last;
              return ListTile(
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      rates == null || rates.isEmpty
                          ? Icons.error
                          : isPositive
                              ? Icons.arrow_upward
                              : Icons.arrow_downward,
                      color: isPositive ? Colors.green : Colors.red,
                    ),
                  ],
                ),
                minLeadingWidth: 10,
                title: Text(
                  exchangeRate['code'] ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                shape: const Border(
                  bottom: BorderSide(
                    width: 0.5,
                  ),
                ),
                subtitle: rates != null && rates.isNotEmpty
                    ? Text(
                        '\$${rates.first.toStringAsFixed(2)}',
                        style: const TextStyle(fontSize: 16.0),
                      )
                    : null,
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    DetailsScreen.routeName,
                    arguments: DetailsScreenArguments(
                      code: exchangeRate['code'],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
