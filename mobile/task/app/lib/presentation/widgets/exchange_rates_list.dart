import 'package:app/presentation/providers/exchange_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExchangeRatesList extends ConsumerWidget {
  
  const ExchangeRatesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var exchangeRates = ref.watch(exchangeRatesProvider);

    return exchangeRates.when(
      data: (rates) {
        return RefreshIndicator(
          onRefresh: () async {
            // Refresh the exchange rates here (e.g., fetch new data)
            exchangeRates = ref.refresh(exchangeRatesProvider);
          },
          child: ListView.separated(
            separatorBuilder: (context, index) => Container(height: 3, color: Colors.grey[100],),
            itemCount: rates.length,
            itemBuilder: (context, index) {
              final rate = rates[index];
              final currentRate = rate.rates.isNotEmpty  ? rate.rates.last : 0.00;
              final previousRate = rate.rates.isNotEmpty  ? rate.rates.first : 0.00;
              final isRateUp = previousRate < currentRate;

              return GestureDetector(
                onTap: () {
                  //ref.read(selectedRateProvider.notifier).setSelectedRate(rate);
                },
                child: ListTile(
                  title: Padding(padding: const EdgeInsets.only(top: 5), child: Text(rate.code)),
                  subtitle: Padding(padding: const EdgeInsets.symmetric(vertical: 5),child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Current Rate: ${currentRate.toStringAsFixed(2)}'),
                      const SizedBox(height: 5,),
                      Text('Previous Rate: ${previousRate.toStringAsFixed(2)}'),
                    ],
                  )),
                  trailing: Icon(
                    isRateUp ? Icons.arrow_upward : Icons.arrow_downward,
                    color: isRateUp ? Colors.green : Colors.red,
                  ),
                ),
              );
            },
          ),
        );
      },
      error: (error, stackTrace) {
        return Center(
          child: Text('Error: $error'),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
