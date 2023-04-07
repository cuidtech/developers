import 'package:exchange_rates/core/flavors.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ThirdPartyModule {
  @singleton
  GraphQLClient get graphQlClient {
    final httpLink = HttpLink(currentFlavor.baseUrl);
    final link = Link.from([httpLink]);
    return GraphQLClient(link: link, cache: GraphQLCache());
  }
}
