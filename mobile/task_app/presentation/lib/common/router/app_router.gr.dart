// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    RateDetailRoute.name: (routeData) {
      final args = routeData.argsAs<RateDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RateDetailPage(
          key: args.key,
          codeArgument: args.codeArgument,
        ),
      );
    },
    RatesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RatesPage(),
      );
    },
  };
}

/// generated route for
/// [RateDetailPage]
class RateDetailRoute extends PageRouteInfo<RateDetailRouteArgs> {
  RateDetailRoute({
    Key? key,
    required String codeArgument,
    List<PageRouteInfo>? children,
  }) : super(
          RateDetailRoute.name,
          args: RateDetailRouteArgs(
            key: key,
            codeArgument: codeArgument,
          ),
          initialChildren: children,
        );

  static const String name = 'RateDetailRoute';

  static const PageInfo<RateDetailRouteArgs> page =
      PageInfo<RateDetailRouteArgs>(name);
}

class RateDetailRouteArgs {
  const RateDetailRouteArgs({
    this.key,
    required this.codeArgument,
  });

  final Key? key;

  final String codeArgument;

  @override
  String toString() {
    return 'RateDetailRouteArgs{key: $key, codeArgument: $codeArgument}';
  }
}

/// generated route for
/// [RatesPage]
class RatesRoute extends PageRouteInfo<void> {
  const RatesRoute({List<PageRouteInfo>? children})
      : super(
          RatesRoute.name,
          initialChildren: children,
        );

  static const String name = 'RatesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
