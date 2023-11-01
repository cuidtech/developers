import 'dart:developer';

import '../../domain/entities/currency.dart';
import '../../domain/entities/detailed_currency.dart';
import '../../domain/entities/failure.dart';
import '../../domain/currency_repository.dart';
import '../models/currency_model.dart';
import '../service/currencies_service.dart';

class ICurrencyRepository implements CurrencyRepository {
  const ICurrencyRepository(this._currenciesService);

  final CurrenciesService _currenciesService;

  @override
  Future<List<Currency>> getCurrencies() async {
    try {
      final result = await _currenciesService.getCurrencies();
      return result.toCurrencyList();
    } catch (e, stackTrace) {
      log(e.toString(), stackTrace: stackTrace, level: 2000);
      throw Failure(message: e.toString());
    }
  }

  @override
  Future<DetailedCurrency> getCurrencyDetail(String code) async {
    try {
      final result = await _currenciesService.getCurrencyDetail(code);
      return result.toDetailedCurrency();
    } catch (e, stackTrace) {
      log(e.toString(), stackTrace: stackTrace, level: 2000);
      throw Failure(message: e.toString());
    }
  }
}
