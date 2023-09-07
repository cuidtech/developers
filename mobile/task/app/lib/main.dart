import 'package:app/exchange_rate/exchange_rates.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async {
  await dotenv.load();

  final HttpLink httpLink = HttpLink(dotenv.env['API_URL']!);

  ValueNotifier<GraphQLClient> client =
      ValueNotifier(GraphQLClient(link: httpLink, cache: GraphQLCache()));

  runApp(GraphQLProvider(
    client: client,
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'cuid coding task',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const ExchangeRatesPage());
  }
}
