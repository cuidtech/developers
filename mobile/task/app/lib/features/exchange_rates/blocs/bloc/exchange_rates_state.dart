part of 'exchange_rates_bloc.dart';

@freezed
class ExchangeRatesState with _$ExchangeRatesState {
  const factory ExchangeRatesState({
    @Default(StateStatus()) StateStatus status,
    @Default([]) List<ExchangeRate> exchangeRates,
    ExchangeRate? selectedExchangeRate,
  }) = _ExchangeRatesState;
}
