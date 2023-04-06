import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'router/app_router.dart';

class App extends StatelessWidget {
  final Client graphQLClient;
  App({super.key, required this.graphQLClient});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<Client>.value(
      value: graphQLClient,
      child: MaterialApp.router(
        title: 'Exchange rates',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: _appRouter.config(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
