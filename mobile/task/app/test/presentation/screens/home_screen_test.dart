import 'package:app/domain/currency_repository.dart';
import 'package:app/presentation/screens/home_screen.dart';
import 'package:app/presentation/widgets/currency_tile.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../domain/entity_factory.dart';
import '../widget_test_utils.dart';

void main() {
  testWidgets('home screen', (tester) async {
    await prepareAndSettle(
      tester,
      widget: const HomeScreen(),
      isConsumer: true,
      overrides: [
        getCurrenciesProvider.overrideWith((ref) async => [createCurrency()]),
      ],
    );

    expect(find.byType(HomeScreen), findsOneWidget);
    expect(find.byType(CurrenciesList), findsOneWidget);
    expect(find.byType(CurrencyTile), findsOneWidget);
  });
}
