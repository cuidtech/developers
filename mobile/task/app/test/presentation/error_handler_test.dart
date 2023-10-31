import 'package:app/presentation/error_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks.dart';
import 'widget_test_utils.dart';

void main() {
  group('error handler', () {
    late VoidCallBack onRetry;
    late Object error;

    setUp(() {
      onRetry = MockVoidCallBack();
    });

    testWidgets('should return an error widget', (tester) async {
      error = Exception();

      await prepareAndSettle(
        tester,
        widget: errorHandler(error, null, onRetry: onRetry),
      );

      expect(find.byType(CurrencyExchangeErrorWidget), findsOneWidget);
      expect(find.text(genericErrorMessage), findsOneWidget);

      final buttonFinder = find.byIcon(Icons.refresh);
      expect(buttonFinder, findsOneWidget);

      await tester.tap(buttonFinder);
      await tester.pump();

      verify(() => onRetry()).called(1);
      verifyNoMoreInteractions(onRetry);
    });
  });
}
