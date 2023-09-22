
import 'package:app/presentation/widgets/exchange_rates_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExchangeRatesScreen extends ConsumerWidget {
  const ExchangeRatesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
        body: Center(
          child: ExchangeRatesList()
        ),
    );
  }
}