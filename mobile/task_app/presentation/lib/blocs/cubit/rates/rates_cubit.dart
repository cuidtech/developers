import 'package:domain/usecases/base/base_usecase.dart';
import 'package:domain/usecases/rates/get_rates_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/blocs/cubit/rates/rates_state.dart';

class RatesCubit extends Cubit<RatesState> {
  final GetRatesUseCase getRatesUseCase;

  RatesCubit({required this.getRatesUseCase}) : super(RatesInitialState());

  void getRates() async {
    var result = await getRatesUseCase.call(EmptyInput());
    result.fold((failure) => emit(RatesErrorState(failure.toString())),
        (success) => emit(RatesLoadedState(success)));
  }
}
