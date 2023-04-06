import 'package:app/features/exchange_rates/models/exchange_rate.dart';
import 'package:app/features/exchange_rates/repository/i_exchange_rates_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/models/state_status.dart';

part 'exchange_rates_event.dart';
part 'exchange_rates_state.dart';
part 'exchange_rates_bloc.freezed.dart';

class ExchangeRatesBloc extends Bloc<ExchangeRatesEvent, ExchangeRatesState> {
  final IExchangeRatesRepository _repository;
  ExchangeRatesBloc({
    required IExchangeRatesRepository repository,
  })  : _repository = repository,
        super(const ExchangeRatesState()) {
    on<_Fetch>(_onFetch);
    on<_Select>(_onSelect);
  }

  void _onFetch(_Fetch event, Emitter<ExchangeRatesState> emit) async {
    try {
      emit(state.copyWith(status: const StateStatus.loading()));
      final exchangeRates = await _repository.fetchExchangeRates();
      if (exchangeRates != null && exchangeRates.isNotEmpty) {
        emit(state.copyWith(status: const StateStatus(), exchangeRates: exchangeRates));
      } else {
        emit(state.copyWith(status: const StateStatus()));
      }
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(e.toString())));
    }
  }

  void _onSelect(_Select event, Emitter<ExchangeRatesState> emit) async {
    try {
      emit(state.copyWith(status: const StateStatus.loading()));
      final selectedExchangeRate = await _repository.getExchangeRateFromCode(code: event.code, historyLenght: 50);
      if (selectedExchangeRate != null) {
        var exchangeRates = List.of(state.exchangeRates);
        final index = exchangeRates.indexWhere((element) => element.code == selectedExchangeRate.code);
        exchangeRates.removeAt(index);
        exchangeRates.insert(index, selectedExchangeRate);
        emit(state.copyWith(
            status: const StateStatus(), selectedExchangeRate: selectedExchangeRate, exchangeRates: exchangeRates));
      } else {
        emit(state.copyWith(status: const StateStatus()));
      }
    } catch (e) {
      emit(state.copyWith(status: StateStatus.error(e.toString())));
    }
  }
}
