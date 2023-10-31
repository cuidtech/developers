import 'package:app/presentation/error_handler.dart';
import 'package:app/presentation/riverpod_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks.dart';
import 'widget_test_utils.dart';

void main() {
  group('riverpod extensions', () {
    group('render when', () {
      late VoidCallBack onRetry;
      final exception = Exception();

      setUp(() => onRetry = MockVoidCallBack());

      testWidgets('should return a text widget', (tester) async {
        const text = 'text';
        const value = AsyncData(text);

        await prepareAndSettle(
          tester,
          widget: value.renderWhen((data) => Text(data), onRetry: onRetry),
        );

        expect(find.text(text), findsOneWidget);
        verifyZeroInteractions(onRetry);
      });

      testWidgets('should return the default error widget', (tester) async {
        final value = AsyncError(exception, StackTrace.empty);

        await prepareAndSettle(
          tester,
          widget: value.renderWhen((data) => Text(data), onRetry: onRetry),
        );

        expect(find.byType(CurrencyExchangeErrorWidget), findsOneWidget);

        await tester.tap(find.byIcon(Icons.refresh));
        await tester.pump();

        verify(() => onRetry()).called(1);
        verifyNoMoreInteractions(onRetry);
      });

      testWidgets('should return custom error widget', (tester) async {
        final value = AsyncError(exception, StackTrace.empty);

        await prepareAndSettle(
          tester,
          widget: value.renderWhen(
            (data) => Text(data),
            error: (_, __) => const Icon(Icons.star),
          ),
        );

        expect(find.byType(CurrencyExchangeErrorWidget), findsNothing);
        expect(find.byIcon(Icons.star), findsOneWidget);

        verifyZeroInteractions(onRetry);
      });

      testWidgets('should return default loading widget', (tester) async {
        const value = AsyncLoading<String>();

        await pumpWidget(
          tester,
          widget: value.renderWhen((data) => Text(data), onRetry: onRetry),
        );
        await tester.pump();

        expect(find.byType(CurrencyExchangeErrorWidget), findsNothing);
        expect(find.byType(CircularProgressIndicator), findsOneWidget);

        verifyZeroInteractions(onRetry);
      });

      testWidgets('should return custom loading widget', (tester) async {
        const loadingLabel = 'Loading...';
        const value = AsyncLoading<String>();

        await prepareAndSettle(
          tester,
          widget: value.renderWhen(
            (data) => Text(data),
            error: (_, __) => const Icon(Icons.star),
            loading: () => const Text(loadingLabel),
          ),
        );

        expect(find.byType(CircularProgressIndicator), findsNothing);
        expect(find.text(loadingLabel), findsOneWidget);

        verifyZeroInteractions(onRetry);
      });
    });
  });
}
