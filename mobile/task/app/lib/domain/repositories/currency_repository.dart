import '../entities/detailed_currency.dart';
import '../entities/currency.dart';

abstract class CurrencyRepository {
  Future<List<Currency>> getCurrencies();
  Future<DetailedCurrency> getCurrencyDetail(String code);
}
