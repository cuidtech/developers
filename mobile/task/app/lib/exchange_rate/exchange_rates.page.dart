import 'package:app/page.widget.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class ExchangeRatesPage extends StatelessWidget {
  const ExchangeRatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    String readExchangeRates = """
      query { exchangeRates {code description rates}}
    """;
    return PageWidget(
        title: 'Exchange Rates',
        child: Query(
          options: QueryOptions(document: gql(readExchangeRates)),
          builder: (QueryResult result,
              {VoidCallback? refetch, FetchMore? fetchMore}) {
            if (result.hasException) {
              return Text(result.exception.toString());
            }

            if (result.isLoading) {
              return const Text('Loading');
            }

            return Container();
          },
        ));
  }
}
