import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exchange Rates'),
      ),
      body: Query(
          options: QueryOptions(
            document: gql(
              '''
query {
  exchangeRates(historyLength: 2) {
    code
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
              return const CircularProgressIndicator();
            }

            // debugPrint(result.data.toString());
            return ListView(
              children: [
                for (final currency in result.data!['exchangeRates'])
                  ListTile(
                      title: Text(currency['code']),
                      subtitle: Text(currency['rates'].first.toStringAsFixed(2)),
                      trailing: currency['rates'].first > currency['rates'].last
                          ? const Icon(Icons.arrow_upward, color: Colors.green)
                          : const Icon(Icons.arrow_downward, color: Colors.red)),
              ],
            );
          }),
    );
  }
}
