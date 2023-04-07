part of 'exchange_rate_details_cubit.dart';

@freezed
class ExchangeRateDetailsState with _$ExchangeRateDetailsState {
  factory ExchangeRateDetailsState({
    @Default(StateStatus.initial) StateStatus stateStatus,
    @Default('') String? errorMessage,
    ExchangeRateDetail? exchangeRateDetail,
  }) = _ExchangeRateDetailsState;
}

extension ExchangeRateDetailsStateX on ExchangeRateDetailsState {
  bool get isInitial => stateStatus == StateStatus.initial;
  bool get isLoading => stateStatus == StateStatus.loading;
  bool get isSuccess => stateStatus == StateStatus.success;
  bool get isFailure => stateStatus == StateStatus.failure;
}
