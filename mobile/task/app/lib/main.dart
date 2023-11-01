import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'presentation/screens/currency_detail_screen.dart';
import 'presentation/screens/home_screen.dart';

void main() => runApp(const ProviderScope(child: CurrencyExchange()));

class CurrencyExchange extends StatelessWidget {
  const CurrencyExchange({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cuid Currency Exchange',
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: const HomeScreen(),
      onGenerateRoute: (settings) {
        if (settings.name == CurrencyDetailScreen.routeName) {
          final code = settings.arguments as String;
          return CupertinoPageRoute(
            builder: (_) => CurrencyDetailScreen(code),
          );
        }
        return null;
      },
    );
  }
}
