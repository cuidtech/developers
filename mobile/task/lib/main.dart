import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:task/services/graphql_service.dart';

void main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: GraphQLService.client,
      child: MaterialApp(
        home: Scaffold(
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
        ),
      ),
    );
  }
}
