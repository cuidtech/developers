import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:gql_http_link/gql_http_link.dart';

import 'app.dart';
import 'common/constants.dart';

void main() {
  final client = Client(link: HttpLink(AppConstants.graphqlServerEndpoint));

  runApp(App(graphQLClient: client));
}
