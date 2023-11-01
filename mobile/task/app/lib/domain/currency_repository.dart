import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/repositories/icurrency_repository.dart';
import '../data/service/currencies_service.dart';
import 'entities/detailed_currency.dart';
import 'entities/currency.dart';

part 'currency_repository.g.dart';

@riverpod
CurrencyRepository currencyRepository(CurrencyRepositoryRef ref) {
  final currenciesService = ref.watch(currenciesServiceProvider);
  return ICurrencyRepository(currenciesService);
}

@riverpod
Future<List<Currency>> getCurrencies(GetCurrenciesRef ref) {
  final repository = ref.read(currencyRepositoryProvider);
  return repository.getCurrencies();
}

@riverpod
Future<DetailedCurrency> getCurrencyDetail(
  GetCurrencyDetailRef ref,
  String code,
) {
  final repository = ref.read(currencyRepositoryProvider);
  return repository.getCurrencyDetail(code);
}

abstract class CurrencyRepository {
  Future<List<Currency>> getCurrencies();
  Future<DetailedCurrency> getCurrencyDetail(String code);
}
