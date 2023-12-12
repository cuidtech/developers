import 'package:domain/entities/rates/rates_entity.dart';

abstract class RatesState {}

class RatesInitialState extends RatesState {}

class RatesLoadingState extends RatesState {}

class RatesLoadedState extends RatesState {
  final List<RatesEntity> rates;

  RatesLoadedState(this.rates);
}

class RatesErrorState extends RatesState {
  final String message;

  RatesErrorState(this.message);
}
