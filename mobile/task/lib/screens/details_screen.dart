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
      body: Center(
        child: Query(
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
              return Text('Details Screen');
            }),
      ),
    );
  }
}
