import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class DetailsScreen extends StatelessWidget {
  final String currencyCode;
  const DetailsScreen({super.key, required this.currencyCode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currencyCode),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Query(
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
                  const SizedBox(
                    height: 200,
                    child: Placeholder(),
                  ),
                  const SizedBox(height: 32),
                  Text(currency['description'] ?? 'no description'),
                ],
              );
            }),
      ),
    );
  }
}
