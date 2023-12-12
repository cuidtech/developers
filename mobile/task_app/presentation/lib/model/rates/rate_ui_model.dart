import 'package:domain/entities/rates/rates_entity.dart';

class RateUIModel {
  String value;
  String description;
  bool isGrowing;

  RateUIModel({
    required this.value,
    required this.description,
    required this.isGrowing,
  });

  static RateUIModel fromEntity(RatesEntity entity) {
    return RateUIModel(
        value: "${entity?.rates?[0] ?? 0} ${entity.code ?? ""}",
        description: entity?.description ?? "",
        isGrowing: (entity?.rates?[0] ?? 0) > (entity.rates![1] ?? 0));
  }
}
