import 'package:core/core.dart';
import 'package:presentation/common/router/app_router.dart';
import 'package:presentation/presentation.dart';
import 'package:presentation/blocs/all_providers.dart';
import 'package:flutter/material.dart';
import 'package:core/common/color_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Core.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter = Core.routeBuilder(Presentation.getAppRouter());

  @override
  Widget build(BuildContext context) {
    return AllProviders(
      child: MaterialApp.router(
        title: 'TASK APP',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: ColorManager.primaryColor,
            brightness: Brightness.light,
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
