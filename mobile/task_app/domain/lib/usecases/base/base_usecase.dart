import 'package:core/common/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class BaseUseCase<In, Out> {
  Future<Either<Failure, Out>> call(In input);
}

class EmptyInput extends Equatable {
  @override
  List<Object> get props => [];
}
