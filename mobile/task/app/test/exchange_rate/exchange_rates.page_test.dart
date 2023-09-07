import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:app/exchange_rate/exchange_rates.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mockito/mockito.dart';
import 'package:app/exchange_rate/widget/exchange_rates_builder.widget.dart';

class MockHttpClient extends Mock implements http.Client {
  @override
  Future<http.StreamedResponse> send(http.BaseRequest? request) =>
      super.noSuchMethod(
        Invocation.method(#send, [request]),
        returnValue: Future.value(
          http.StreamedResponse(
            Stream.fromIterable(const [<int>[]]),
            500,
          ),
        ),
      ) as Future<http.StreamedResponse>;
}

void main() async {
  final Map<String, dynamic> responseJson = json.decode(
      await File('test_resources/exchange_rates_data.json').readAsString());

  group('ExchangeRatesPage', () {
    late MockHttpClient mockHttpClient;
    HttpLink httpLink;
    ValueNotifier<GraphQLClient>? client;

    setUp(() async {
      mockHttpClient = MockHttpClient();
      httpLink = HttpLink('http://www.example.com/graphql',
          httpClient: mockHttpClient);
      client =
          ValueNotifier(GraphQLClient(link: httpLink, cache: GraphQLCache()));
    });

    tearDown(() {
      reset(mockHttpClient);
    });

    testWidgets('should render correctly', (WidgetTester tester) async {
      when(mockHttpClient.send(captureAny)).thenAnswer((_) =>
          Future<http.StreamedResponse>.value(http.StreamedResponse(
              Stream.value(utf8
                  .encode(json.encode({"data": responseJson, "errors": null}))),
              200)));

      await tester.pumpWidget(
        GraphQLProvider(
          client: client,
          child: const MaterialApp(
            home: Scaffold(
              body: ExchangeRatesPage(),
            ),
          ),
        ),
      );

      // Verify loading text is visible before data is available.
      expect(find.text('Loading'), findsOneWidget);

      await tester.pumpAndSettle();

      // Verify that the title is displayed
      expect(find.text('Exchange Rates'), findsOneWidget);

      // Verify that the ExchangeRatesBuilderWidget is rendered
      expect(find.byType(ExchangeRatesBuilderWidget), findsOneWidget);
    });

    testWidgets('should display error message on exception',
        (WidgetTester tester) async {
      when(mockHttpClient.send(captureAny)).thenAnswer(
          (_) => Future<http.StreamedResponse>.value(http.StreamedResponse(
              Stream.value(utf8.encode(json.encode({
                "data": null,
                "errors": [
                  {"message": "Error Message"}
                ]
              }))),
              200)));

      await tester.pumpWidget(
        GraphQLProvider(
          client: client,
          child: const MaterialApp(
            home: Scaffold(
              body: ExchangeRatesPage(),
            ),
          ),
        ),
      );

      expect(find.text('Loading'), findsOneWidget);

      await tester.pumpAndSettle();

      // Verify that the title is displayed
      expect(find.text('Exchange Rates'), findsOneWidget);

      // Verify that the error message is displayed
      expect(find.text('Data could not be loaded'), findsOneWidget);

      // Verify that the ExchangeRatesBuilderWidget is not rendered
      expect(find.byType(ExchangeRatesBuilderWidget), findsNothing);
    });
  });
}
