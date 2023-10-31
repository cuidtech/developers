import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

const screenWidth = 1170.0;
const screenHeight = 2532.0;
const defaultScreenSize = Size(screenWidth, screenHeight);

class MockRoute extends Mock implements Route {}

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

class ConsumerBuilderWrapper extends ConsumerWidget {
  const ConsumerBuilderWrapper(
    this.builder, {
    super.key,
  });
  final Widget Function(BuildContext, WidgetRef) builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return builder(context, ref);
  }
}

class ProviderScopeWrapper extends StatelessWidget {
  const ProviderScopeWrapper({
    this.isConsumer = false,
    this.overrides = const [],
    required this.widget,
    super.key,
  });

  final bool isConsumer;
  final List<Override> overrides;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return isConsumer
        ? ProviderScope(
            overrides: overrides,
            child: widget,
          )
        : widget;
  }
}

Future<void> prepareAndSettle(
  WidgetTester tester, {
  required Widget widget,
  Size screenSize = defaultScreenSize,
  bool isConsumer = false,
  List<Override> overrides = const [],
  NavigatorObserver? navigatorObserver,
}) async {
  await pumpWidget(
    tester,
    screenSize: screenSize,
    isConsumer: isConsumer,
    overrides: overrides,
    widget: widget,
    navigatorObserver: navigatorObserver,
  );
  await tester.pumpAndSettle();
}

Future<void> pumpWidget(
  WidgetTester tester, {
  required Widget widget,
  Size? screenSize = defaultScreenSize,
  bool isConsumer = false,
  List<Override> overrides = const [],
  NavigatorObserver? navigatorObserver,
}) async {
  if (screenSize != null) {
    setupScreenSize(tester, screenSize);
  }
  await tester.pumpWidget(
    MaterialApp(
      home: Scaffold(
        body: ProviderScopeWrapper(
          isConsumer: isConsumer,
          overrides: overrides,
          widget: widget,
        ),
      ),
      navigatorObservers:
          navigatorObserver != null ? [navigatorObserver] : const [],
    ),
  );
}

void setupScreenSize(
  WidgetTester tester, [
  Size screenSize = defaultScreenSize,
]) =>
    tester.view.physicalSize = screenSize;
