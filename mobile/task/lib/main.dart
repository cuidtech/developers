import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:task/screens/list_screen.dart';
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
      child: const MaterialApp(
        home: ListScreen(),
      ),
    );
  }
}
