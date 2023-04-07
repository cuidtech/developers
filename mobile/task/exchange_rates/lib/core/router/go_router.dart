import 'package:exchange_rates/features/exchange_rates/exchange_rate_list/view/exchange_list_screen.dart';
import 'package:go_router/go_router.dart';

GoRouter goRouter() => GoRouter(
      debugLogDiagnostics: true,
      initialLocation: ExchangeRateListScreen.path,
      routes: [ExchangeRateListScreen.route()],
    );
