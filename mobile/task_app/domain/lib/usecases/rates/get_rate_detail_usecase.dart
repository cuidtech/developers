import 'package:core/common/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import '../../entities/rates/rate_detail_entity.dart';
import '../base/base_usecase.dart';

class GetRateDetailUseCase
    extends BaseUseCase<GetRateDetailUseCaseInput, RateDetailEntity> {
  final RatesRepository repository;

  GetRateDetailUseCase(this.repository);

  @override
  Future<Either<Failure, RateDetailEntity>> call(
      GetRateDetailUseCaseInput input) async {
    return await repository.getRateDetail(
        code: input.code, historyLength: input.historyLength);
  }
}

class GetRateDetailUseCaseInput {
  String code;
  double historyLength;

  GetRateDetailUseCaseInput({required this.code, required this.historyLength});
}
