import 'package:app/exchange_rate/model/exchange_rate.dart';
import 'package:app/exchange_rate/widget/exchange_rates_builder.widget.dart';
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

            List<ExchangeRate> exchangeRates =
                (result.data?['exchangeRates'] as List)
                    .map((rate) => ExchangeRate.fromJson(rate))
                    .toList();

            return ExchangeRatesBuilderWidget(exchangeRates: exchangeRates);
          },
        ));
  }
}
