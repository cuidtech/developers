import 'package:core/common/failure.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../model/api_response.dart';

class GraphQLService {
  GraphQLService() {
    final link = HttpLink('http://192.168.68.120:4000/graphql');
    _graphQLClient = GraphQLClient(link: link, cache: GraphQLCache());
  }

  late final GraphQLClient _graphQLClient;

  GraphQLClient get client => _graphQLClient;

  Future<ApiResponse<dynamic>> performQuery(
      String query, {
        required Map<String, dynamic> variables,
      }) async {
    try {
      final options = QueryOptions(
        document: gql(query),
        variables: variables,
      );

      final result = await _graphQLClient.query(options);

      if (result.hasException) {
        final errorCode =
            result.context.entry<HttpLinkResponseContext>()?.statusCode ?? 0;
        return ApiFailure(
          error: RemoteFailure(message: result.exception.toString(), code: errorCode),
        );
      } else {
        return ApiSuccess(data: result.data);
      }
    } on Exception catch (_, e) {
      return ApiFailure(error: RemoteFailure(message:e.toString(), code: 0));
    }
  }

  Future<QueryResult> performMutation(
      String query, {
        required Map<String, dynamic> variables,
      }) async {
    final options = MutationOptions(document: gql(query), variables: variables);

    final result = await _graphQLClient.mutate(options);

    return result;
  }
}
