import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/currency_repository.dart';
import '../../domain/entities/currency.dart';
import '../riverpod_extensions.dart';
import '../widgets/currency_tile.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context, ref) {
    final currenciesState = ref.watch(getCurrenciesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency Exchange'),
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: currenciesState.renderWhen(
        (data) => CurrenciesList(data),
        onRetry: () => ref.refresh(getCurrenciesProvider),
      ),
    );
  }
}

@visibleForTesting
class CurrenciesList extends StatelessWidget {
  const CurrenciesList(this.currencies, {super.key});

  final List<Currency> currencies;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: currencies.length,
      itemBuilder: (context, index) => CurrencyTile(currencies[index]),
    );
  }
}
