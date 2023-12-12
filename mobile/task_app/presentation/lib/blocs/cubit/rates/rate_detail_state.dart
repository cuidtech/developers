import '../../../model/rates/rate_detail_ui_model.dart';

abstract class RateDetailState {}

class RateDetailInitialState extends RateDetailState {}

class RateDetailLoadingState extends RateDetailState {}

class RateDetailLoadedState extends RateDetailState {
  final RateDetailUIModel rateDetail;

  RateDetailLoadedState(this.rateDetail);
}

class RateDetailErrorState extends RateDetailState {
  final String message;

  RateDetailErrorState(this.message);
}