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
    emit(
      state.copyWith(
        stateStatus: StateStatus.loading,
      ),
    );
    final exchangeRates =
        await _exchangeRateRepository.getExchangeList(historyLength: 30);
    emit(
      exchangeRates.fold(
        (l) =>
            state.copyWith(stateStatus: StateStatus.failure, errorMessage: l),
        (r) => state.copyWith(
          stateStatus: StateStatus.success,
          exchangeRates: r,
        ),
      ),
    );
  }
}
