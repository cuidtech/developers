import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'graphql_client.g.dart';

@Riverpod(keepAlive: true)
GraphQLClient graphQlClient(GraphQlClientRef ref) {
  const host = String.fromEnvironment(
    'HOST',
    defaultValue: 'localhost',
  );
  const uri = 'http://$host:4000/graphql';

  final cache = GraphQLCache();
  final link = HttpLink(uri);

  return GraphQLClient(link: link, cache: cache);
}
