import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../features/exchange_rates/blocs/bloc/exchange_rates_bloc.dart';
import '../features/exchange_rates/pages/exchange_rate_page.dart';
import '../features/exchange_rates/pages/exchange_rates_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: ExchangeRatesRoute.page, path: '/'),
    AutoRoute(page: ExchangeRateRoute.page),
  ];
}
