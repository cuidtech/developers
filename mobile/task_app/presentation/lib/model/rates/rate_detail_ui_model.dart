import 'package:domain/entities/rates/rate_detail_entity.dart';

class RateDetailUIModel {
  String value;
  String description;
  bool isGrowing;
  List<double> rates;

  RateDetailUIModel(
      {required this.value,
      required this.description,
      required this.isGrowing,
      required this.rates});

  static RateDetailUIModel fromEntity(RateDetailEntity entity) {
    return RateDetailUIModel(
        value: "${entity?.rates?[0] ?? 0} ${entity.code ?? ""}",
        description: entity?.description ?? "",
        isGrowing: (entity?.rates?[0] ?? 0) > (entity.rates![1] ?? 0),
        rates: entity?.rates ?? []);
  }
}
