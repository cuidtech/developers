import '../../core/fake_data.dart';
import '../../domain/currency_repository.dart';
import '../../domain/entities/currency.dart';
import '../../domain/entities/detailed_currency.dart';
import '../models/currency_model.dart';
import '../models/detailed_currency_model.dart';

class FakeCurrencyRepository implements CurrencyRepository {
  const FakeCurrencyRepository([this.delayInMs = 500]);

  final int delayInMs;

  @override
  Future<List<Currency>> getCurrencies() async {
    await _simulateNetworkCall();
    final data = getCurrenciesResponse['exchangeRates'] as List;

    final models = data
        .map((e) => CurrencyModel.fromJson(e as Map<String, dynamic>))
        .toList();

    return models.toCurrencyList();
  }

  @override
  Future<DetailedCurrency> getCurrencyDetail(String code) async {
    await _simulateNetworkCall();
    final data =
        getCurrencyDetailResponse['exchangeRate'] as Map<String, dynamic>;

    final model = DetailedCurrencyModel.fromJson(data);
    return model.toDetailedCurrency();
  }

  Future<void> _simulateNetworkCall() async {
    await Future.delayed(Duration(milliseconds: delayInMs));
  }
}
