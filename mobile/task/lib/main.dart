import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async {
  final HttpLink httpLink = HttpLink(
    'http://localhost:4000/graphql',
  );

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(),
    ),
  );

  runApp(
    GraphQLProvider(
      client: client,
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
