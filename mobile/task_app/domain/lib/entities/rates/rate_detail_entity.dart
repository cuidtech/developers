import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_detail_entity.freezed.dart';

part 'rate_detail_entity.g.dart';

@freezed
class RateDetailEntity with _$RateDetailEntity {
  const RateDetailEntity._();

  const factory RateDetailEntity({
    String? code,
    String? description,
    List<double>? rates
  }) = _RateDetailEntity;

  factory RateDetailEntity.fromJson(Map<String, Object?> json) =>
      _$RateDetailEntityFromJson(json);
}
