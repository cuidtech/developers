import 'package:app/data/exchange_graphql_service.dart';
import 'package:app/domain/exchange_repository.dart';
import 'package:app/domain/models/exchange_model.dart';
import 'package:app/main.dart';
import 'package:app/presentation/exchange_rate_details_screen.dart';
import 'package:app/presentation/providers/exchange_provider.dart';
import 'package:app/presentation/providers/models/exchange_rate_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/testing.dart';
import 'package:http/http.dart' as http;
import 'package:nock/nock.dart';

final mockHttpClient = MockClient((request) async {
  // Define the behavior of the mock HTTP client here
  // You can return mock responses based on the request
  // Example:
  if (request.url.path == '/localhost') {
    return http.Response('', 200);
  }
  // Handle other requests or throw an exception for unexpected requests
  throw Exception('Unexpected request: ${request.url}');
});

final httpClientProvider = Provider<http.Client>((ref) {
  // You can create and configure your http.Client here
  // For testing purposes, you can use the mock client as well
  return http.Client();
});


void main() {
  setUpAll(nock.init);

  setUp(() {
    nock.cleanAll();
  });

  testWidgets('ExchangeRatesList widget test', (WidgetTester tester) async {
    
    List<ExchangeRate> fakeData = [];

    for (var i = 0; i < 1000; i++) {
      fakeData.add(ExchangeRate(code: "EUR", desc: "", rates: [10,1]));
    }
    
    // Build our widget with MaterialApp and Providers
    await tester.pumpWidget(
      MaterialApp(
        home: ProviderScope(
          overrides: [
            httpClientProvider.overrideWithValue(mockHttpClient),
            exchangeRatesProvider.overrideWith((ref) => fakeData),
            selectedRateProvider.overrideWith((ref) => ExchangeRateNotifier.withRate(ExchangeRate(code: "EUR", desc: "", rates: [1,1]), ExchangeRepository(ExchangeService())))
          ],
          child: const MainApp(),
        ),
      ),
    );

    // Verify that the ListView is displayed
    expect(find.byType(ListView), findsOneWidget);

    await tester.tap(find.byType(ListView));
    await tester.pumpAndSettle();

    // Verify that the ExchangeRateDetails screen is displayed
    expect(find.byType(ExchangeRateDetails), findsOneWidget);
  });
}
