import 'package:app/presentation/widgets/rate_chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_test/flutter_test.dart';

import '../widget_test_utils.dart';

void main() {
  testWidgets('rate chart', (tester) async {
    await prepareAndSettle(
      tester,
      widget: const RateChart(
        [1.123423, 2.124534, 3.12345, 4.12345, 5.1235],
      ),
    );

    expect(find.byType(LineChart), findsOneWidget);
  });
}
