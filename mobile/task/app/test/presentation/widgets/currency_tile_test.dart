import 'package:app/presentation/widgets/currency_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../data/mock_data.dart';
import '../../domain/entity_factory.dart';
import '../widget_test_utils.dart';

void main() {
  group('currency tile', () {
    late NavigatorObserver navigatorObserver;

    setUp(() => navigatorObserver = MockNavigatorObserver());

    setUpAll(() => registerFallbackValue(MockRoute()));

    testWidgets('should return a currency tile', (tester) async {
      await prepareAndSettle(
        tester,
        widget: CurrencyTile(createCurrency()),
        navigatorObserver: navigatorObserver,
      );

      final tileFinder = find.byType(CurrencyTile);

      expect(tileFinder, findsOneWidget);
      expect(find.text(code), findsOneWidget);
      expect(find.byIcon(Icons.arrow_downward), findsOneWidget);

      await tester.tap(tileFinder);
      await tester.pumpAndSettle();

      verify(() => navigatorObserver.didPush(captureAny(), any())).called(2);
      verify(() => navigatorObserver.navigator).called(1);
      verifyNoMoreInteractions(navigatorObserver);
    });
  });
}
