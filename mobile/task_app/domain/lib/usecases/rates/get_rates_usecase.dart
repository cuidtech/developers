import 'package:core/common/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:data/repositories/rates/rates_repository.dart';
import 'package:domain/entities/rates/rates_entity.dart';
import '../base/base_usecase.dart';

class GetRatesUseCase
    extends BaseUseCase<EmptyInput, List<RatesEntity>> {
  final RatesRepository repository;

  GetRatesUseCase(this.repository);

  @override
  Future<Either<Failure, List<RatesEntity>>> call(
      EmptyInput input) async {
    return await repository.getRates();
  }
}