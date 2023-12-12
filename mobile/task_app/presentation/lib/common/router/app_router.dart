import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../pages/rate_detail/rate_detail_page.dart';
import '../../pages/rates/rates_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: RatesRoute.page, initial: true),
        AutoRoute(page: RateDetailRoute.page),
      ];
}
