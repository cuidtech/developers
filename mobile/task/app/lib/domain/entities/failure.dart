import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  // TODO: Enhance this class to include a list of expected errors
  const factory Failure({
    required String message,
  }) = _Failure;
}
