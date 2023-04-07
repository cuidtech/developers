import 'package:bloc/bloc.dart';
import 'package:exchange_rates/core/utils/enums.dart';
import 'package:exchange_rates/features/exchange_rates/repository/exchange_repository.dart';
import 'package:exchange_rates/features/exchange_rates/repository/models/exchange_rate.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'exchange_rates_cubit.freezed.dart';
part 'exchange_rates_state.dart';

@injectable
class ExchangeRatesCubit extends Cubit<ExchangeRatesState> {
  ExchangeRatesCubit(this._exchangeRateRepository)
      : super(ExchangeRatesState());

  final ExchangeRateRepository _exchangeRateRepository;
  Future<void> getExchangeRates() async {
    try {
      emit(
        state.copyWith(
          stateStatus: StateStatus.loading,
        ),
      );
      final exchangeRates = await _exchangeRateRepository.getExchangeList();
      emit(
        state.copyWith(
          stateStatus: StateStatus.success,
          exchangeRates: exchangeRates,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          stateStatus: StateStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
