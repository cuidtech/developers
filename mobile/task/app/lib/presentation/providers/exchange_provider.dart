import 'package:app/data/exchange_graphql_service.dart';
import 'package:app/presentation/providers/models/exchange_rate_notifier.dart';
import 'package:app/presentation/providers/models/exchange_rate_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/exchange_repository.dart';
import '../../domain/models/exchange_model.dart';

final exchangeRepositoryProvider = Provider<ExchangeRepository>((ref) {
  // Initialize and return an instance of ExchangeRepository here.
  return ExchangeRepository(ExchangeService());
});

final exchangeRatesProvider = FutureProvider<List<ExchangeRate>>((ref) async {
  // Get the ExchangeRepository instance from the provider
  final exchangeRepository = ref.watch(exchangeRepositoryProvider);

  // Use the repository to fetch exchange rates
  final rates = await exchangeRepository.getAllRates();

  return rates;
});

final selectedRateProvider = StateNotifierProvider<ExchangeRateNotifier, ExchangeRateState>((ref){
  // Get the ExchangeRepository instance from the provider
  final exchangeRepository = ref.watch(exchangeRepositoryProvider);

  return ExchangeRateNotifier(exchangeRepository);
});