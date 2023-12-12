import 'package:core/common/failure.dart';

abstract class ApiResponse<T> {}

class ApiSuccess<T> extends ApiResponse<T> {
  T? data;

  ApiSuccess({required this.data});
}

class ApiFailure<T> extends ApiResponse<T> {
  Failure error;

  ApiFailure({required this.error});
}