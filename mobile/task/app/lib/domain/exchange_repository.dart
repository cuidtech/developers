import '../data/exchange_graphql_service.dart';
import 'models/exchange_model.dart';

/// A repository class that provides data access methods for exchanging rates.
class ExchangeRepository {
  final ExchangeService _exchangeService;

  // Constructor to initialize the ExchangeRepository with an ExchangeService instance.
  ExchangeRepository(this._exchangeService);

  // Fetch all exchange rates.
  Future<List<ExchangeRate>> getAllRates() async {
    try {
      // Call the ExchangeService to get all exchange rates.
      return await _exchangeService.getAllRates();
    } catch (e) {
      return [];
    }
  }

  // Fetch exchange rate by currency code.
  Future<ExchangeRate?> getRateByCode(String code) async {
    try {
      // Call the ExchangeService to get the exchange rate for a specific currency code.
      return await _exchangeService.getRateByCode(code);
    } catch (e) {
      return null;
    }
  }
}
