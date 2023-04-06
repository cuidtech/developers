part of 'exchange_rates_bloc.dart';

@freezed
class ExchangeRatesEvent with _$ExchangeRatesEvent {
  const factory ExchangeRatesEvent.fetch() = _Fetch;
  const factory ExchangeRatesEvent.select(String code) = _Select;
}
