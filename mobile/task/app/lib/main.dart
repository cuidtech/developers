import 'package:app/screens/details_screen.dart';
import 'package:app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final HttpLink httpLink = HttpLink(
      'http://localhost:4000/graphql',
    );
    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        link: httpLink,
        // The default store is the InMemoryStore, which does NOT persist to disk
        cache: GraphQLCache(store: InMemoryStore()),
      ),
    );
    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        title: 'Cuid Tech',
        theme: ThemeData(
          brightness: Brightness.dark,
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
        routes: {
          DetailsScreen.routeName: (context) => const DetailsScreen(),
        },
      ),
    );
  }
}
