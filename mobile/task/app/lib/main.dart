import 'package:app/presentation/exchange_rates_screen.dart';
import 'package:app/presentation/widgets/exchange_rates_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(
      child: MainApp(),
  )); 
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      routes: {
      '/': (context) => const ExchangeRatesScreen(),
      },
      initialRoute: "/",
    );
  }
}
