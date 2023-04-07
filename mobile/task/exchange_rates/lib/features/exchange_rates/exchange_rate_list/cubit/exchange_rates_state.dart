part of 'exchange_rates_cubit.dart';

@freezed
class ExchangeRatesState with _$ExchangeRatesState {
  factory ExchangeRatesState({
    @Default(StateStatus.initial) StateStatus stateStatus,
    @Default('') String? errorMessage,
    @Default([]) List<ExchangeRate> exchangeRates,
  }) = _ExchangeRatesState;
}
