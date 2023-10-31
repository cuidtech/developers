import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/currency_repository.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context, ref) {
    final currenciesState = ref.watch(getCurrenciesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Exchange'),
      ),
      body: const Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
