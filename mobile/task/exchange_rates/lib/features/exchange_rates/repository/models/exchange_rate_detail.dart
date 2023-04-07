import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_rate_detail.freezed.dart';
part 'exchange_rate_detail.g.dart';

@freezed
class ExchangeRateDetail with _$ExchangeRateDetail {
  factory ExchangeRateDetail({
    @Default('') String code,
    @Default('') String description,
    @Default([]) List<double> rates,
  }) = _ExchangeRateDetail;
  factory ExchangeRateDetail.fromJson(Map<String, dynamic> json) =>
      _$ExchangeRateDetailFromJson(json);
}
