library core;

import 'package:presentation/common/router/app_router.dart';

import 'di/core_di.dart';

export 'di/core_di.dart';
export 'common/color_manager.dart';
export 'common/values_manager.dart';
export 'common/styles_manager.dart';

class Core {
  static Future<void> init() async {
    await configInjector();
  }

  static AppRouter routeBuilder(AppRouter router) {
    getIt.registerLazySingleton<AppRouter>(() => router);
    return router;
  }
}