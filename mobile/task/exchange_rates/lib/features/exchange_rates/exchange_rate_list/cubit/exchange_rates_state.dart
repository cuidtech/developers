part of 'exchange_rates_cubit.dart';

@freezed
class ExchangeRatesState with _$ExchangeRatesState {
  factory ExchangeRatesState({
    @Default(StateStatus.initial) StateStatus stateStatus,
    @Default('') String? errorMessage,
    @Default([]) List<ExchangeRate> exchangeRates,
  }) = _ExchangeRatesState;
}

extension ExchangeRatesStateX on ExchangeRatesState {
  bool get isInitial => stateStatus == StateStatus.initial;
  bool get isLoading => stateStatus == StateStatus.loading;
  bool get isSuccess => stateStatus == StateStatus.success;
  bool get isFailure => stateStatus == StateStatus.failure;
}
