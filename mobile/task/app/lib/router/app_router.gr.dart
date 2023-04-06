// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    ExchangeRateRoute.name: (routeData) {
      final args = routeData.argsAs<ExchangeRateRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: ExchangeRatePage(
          key: args.key,
          exchangeRatesBloc: args.exchangeRatesBloc,
        )),
      );
    },
    ExchangeRatesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const ExchangeRatesPage()),
      );
    },
  };
}

/// generated route for
/// [ExchangeRatePage]
class ExchangeRateRoute extends PageRouteInfo<ExchangeRateRouteArgs> {
  ExchangeRateRoute({
    Key? key,
    required ExchangeRatesBloc exchangeRatesBloc,
    List<PageRouteInfo>? children,
  }) : super(
          ExchangeRateRoute.name,
          args: ExchangeRateRouteArgs(
            key: key,
            exchangeRatesBloc: exchangeRatesBloc,
          ),
          initialChildren: children,
        );

  static const String name = 'ExchangeRateRoute';

  static const PageInfo<ExchangeRateRouteArgs> page =
      PageInfo<ExchangeRateRouteArgs>(name);
}

class ExchangeRateRouteArgs {
  const ExchangeRateRouteArgs({
    this.key,
    required this.exchangeRatesBloc,
  });

  final Key? key;

  final ExchangeRatesBloc exchangeRatesBloc;

  @override
  String toString() {
    return 'ExchangeRateRouteArgs{key: $key, exchangeRatesBloc: $exchangeRatesBloc}';
  }
}

/// generated route for
/// [ExchangeRatesPage]
class ExchangeRatesRoute extends PageRouteInfo<void> {
  const ExchangeRatesRoute({List<PageRouteInfo>? children})
      : super(
          ExchangeRatesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExchangeRatesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
