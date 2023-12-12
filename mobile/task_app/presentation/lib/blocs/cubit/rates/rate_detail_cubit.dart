import 'package:domain/usecases/rates/get_rate_detail_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/blocs/cubit/rates/rate_detail_state.dart';

import '../../../model/rates/rate_detail_ui_model.dart';

class RateDetailCubit extends Cubit<RateDetailState> {
  final GetRateDetailUseCase getRateDetailUseCase;

  RateDetailCubit({required this.getRateDetailUseCase}) : super(RateDetailInitialState());

  void getRateDetail(String code) async {
    emit(RateDetailInitialState());
    var result = await getRateDetailUseCase.call(GetRateDetailUseCaseInput(code: code, historyLength: 30));
    result.fold((failure) => emit(RateDetailErrorState(failure.toString())),
            (success) => emit(RateDetailLoadedState(RateDetailUIModel.fromEntity(success))));
  }
}
