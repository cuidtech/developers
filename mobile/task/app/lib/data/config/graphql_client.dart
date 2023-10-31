import 'package:graphql/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'graphql_client.g.dart';

@Riverpod(keepAlive: true)
GraphQLClient graphQlClient(GraphQlClientRef ref) {
  const host = 'http://localhost:4000/graphql';

  final cache = GraphQLCache();
  final link = HttpLink(host);

  return GraphQLClient(link: link, cache: cache);
}
