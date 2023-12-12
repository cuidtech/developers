import 'package:freezed_annotation/freezed_annotation.dart';

part 'rates_entity.freezed.dart';

part 'rates_entity.g.dart';

@freezed
class RatesEntity with _$RatesEntity {
  const RatesEntity._();

  const factory RatesEntity({
     String? code,
     String? description,
     List<double>? rates
  }) = _RatesEntity;

  factory RatesEntity.fromJson(Map<String, Object?> json) =>
      _$RatesEntityFromJson(json);
}
