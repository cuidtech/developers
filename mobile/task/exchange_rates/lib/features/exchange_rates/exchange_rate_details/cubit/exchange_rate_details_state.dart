part of 'exchange_rate_details_cubit.dart';

@freezed
class ExchangeRateDetailsState with _$ExchangeRateDetailsState {
  factory ExchangeRateDetailsState({
    @Default(StateStatus.initial) StateStatus stateStatus,
    @Default('') String? errorMessage,
    ExchangeRateDetail? exchangeRateDetail,
  }) = _ExchangeRateDetailsState;
}
