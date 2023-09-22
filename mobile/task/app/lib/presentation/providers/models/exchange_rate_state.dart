import 'package:app/domain/models/exchange_model.dart';

class ExchangeRateState  {

  bool loading;
  ExchangeRate? selectedRate;

  ExchangeRateState({
    required this.loading,
    this.selectedRate,
  });

  ExchangeRateState copyWith({
    bool? loading,
    ExchangeRate? selectedRate,
  }) {
    return ExchangeRateState(
      loading: loading ?? this.loading,
      selectedRate: selectedRate ?? this.selectedRate,
    );
  }

}
