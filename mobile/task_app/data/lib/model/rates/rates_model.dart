import 'package:domain/entities/rates/rate_detail_entity.dart';
import 'package:domain/entities/rates/rates_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rates_model.freezed.dart';

part 'rates_model.g.dart';

@freezed
class RatesModel with _$RatesModel {
  const RatesModel._();

  const factory RatesModel({
    String? code,
    String? description,
    List<double>? rates
  }) = _RatesModel;

  factory RatesModel.fromJson(Map<String, Object?> json) =>
      _$RatesModelFromJson(json);

  RatesEntity toEntity() {
    return RatesEntity(
      code: code,
      description: description,
      rates: rates,);
  }
}
