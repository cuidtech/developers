import 'package:bloc/bloc.dart';
import 'package:exchange_rates/core/utils/enums.dart';
import 'package:exchange_rates/features/exchange_rates/repository/exchange_repository.dart';
import 'package:exchange_rates/features/exchange_rates/repository/models/exchange_rate_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'exchange_rate_details_cubit.freezed.dart';
part 'exchange_rate_details_state.dart';

@injectable
class ExchangeRateDetailsCubit extends Cubit<ExchangeRateDetailsState> {
  ExchangeRateDetailsCubit(this._exchangeRateRepository)
      : super(ExchangeRateDetailsState());

  final ExchangeRateRepository _exchangeRateRepository;

  Future<void> getExchangeRateDetails(String code) async {
    emit(
      state.copyWith(
        stateStatus: StateStatus.loading,
      ),
    );
    final exchangeRateDetail = await _exchangeRateRepository
        .getSingleExchangeData(code, historyLength: 30);

    emit(
      exchangeRateDetail.fold(
        (l) =>
            state.copyWith(stateStatus: StateStatus.failure, errorMessage: l),
        (r) => state.copyWith(
          stateStatus: StateStatus.success,
          exchangeRateDetail: r,
        ),
      ),
    );
  }
}
