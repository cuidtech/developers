import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Query(
            options: QueryOptions(
              document: gql(
                '''
                    query {
      exchangeRate(code: "EUR") {
      code
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
              debugPrint(result.data.toString());
              return Text(result.data.toString());
            }),
      ),
    );
  }
}
