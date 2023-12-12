import 'dart:ffi';

import 'package:core/common/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:data/model/api_response.dart';
import 'package:data/model/rates/rates_model.dart';
import 'package:domain/entities/rates/rate_detail_entity.dart';
import 'package:domain/entities/rates/rates_entity.dart';

import '../../datasources/rates/rates_datasource.dart';

abstract class RatesRepository {
  Future<Either<Failure, RateDetailEntity>> getRateDetail(
      {required String code, required double historyLength});

  Future<Either<Failure, List<RatesEntity>>> getRates();
}

class RatesRepositoryImpl implements RatesRepository {
  RatesDataSource dataSource;

  RatesRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, RateDetailEntity>> getRateDetail(
      {required String code, required double historyLength}) async {
    try {
      ApiResponse<RatesModel> data =
          await dataSource.getRateDetail(code: code, length: historyLength);

      if (data is ApiSuccess<RatesModel>) {

        RateDetailEntity entity = RateDetailEntity(
            code: data.data?.code ?? "",
            description: data.data?.description ?? "",
            rates: data.data?.rates ?? []);
        return Right(entity);
      } else {
        return Left(RemoteFailure(message: data.toString()));
      }
    } catch (e) {
      return Left(RemoteFailure(message: e.toString(), code: 0));
    }
  }

  @override
  Future<Either<Failure, List<RatesEntity>>> getRates() async {
    try {
      var data = await dataSource.getRates();
      if (data is ApiSuccess && data != null) {
        List<RatesEntity> entities = (data as ApiSuccess<List<RatesModel>>)
                .data
                ?.map((model) => model.toEntity())
                .toList() ??
            [];
        return Right(entities);
      } else {
        return Left(RemoteFailure(message: data.toString()));
      }
    } catch (e) {
      return Left(RemoteFailure(message: e.toString(), code: 0));
    }
  }
}
