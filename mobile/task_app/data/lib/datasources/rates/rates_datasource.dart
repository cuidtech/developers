import 'package:core/common/failure.dart';
import 'package:data/model/api_response.dart';
import '../../model/rates/rates_model.dart';
import '../graphql/gralhql_service.dart';

const String getRatesQuery = '''
  query GetExchangeRates(\$historyLength: Float) {
    exchangeRates(historyLength: \$historyLength) {
      code
      description
      rates
    }
  }
''';

const String getRateDetailQuery = '''
  query GetExchangeRate(\$code: String!, \$historyLength: Float) {
    exchangeRate(code: \$code, historyLength: \$historyLength) {
      code
      description
      rates
    }
  }
''';

abstract class RatesDataSource {
  Future<ApiResponse<List<RatesModel>>> getRates();

  Future<ApiResponse<RatesModel>> getRateDetail(
      {required String code, required double length});
}

class RatesDataSourceImpl implements RatesDataSource {
  GraphQLService graphQLService;

  RatesDataSourceImpl({required this.graphQLService});

  @override
  Future<ApiResponse<List<RatesModel>>> getRates() async {
    final response = await graphQLService
        .performQuery(getRatesQuery, variables: {"historyLength": 2});

    if (response is ApiSuccess) {
      try {
        List<RatesModel> models = [];
        var ratesList = response.data['exchangeRates'] as List;

        for (var json in ratesList) {
          models.add(RatesModel.fromJson(json));
        }
        return ApiSuccess(data: models);
      } catch (e) {
        return ApiFailure(error: LocalFailure(message: e.toString()));
      }
    } else {
      return ApiFailure(error: (response as ApiFailure).error);
    }
  }

  @override
  Future<ApiResponse<RatesModel>> getRateDetail(
      {required String code, required double length}) async {
    final response = await graphQLService.performQuery(getRateDetailQuery,
        variables: {"code": code, "historyLength": length});

    if (response is ApiSuccess) {
      try {
        RatesModel model = RatesModel.fromJson(response.data['exchangeRate']);

        return ApiSuccess(data: model);
      } catch (e) {
        return ApiFailure(error: LocalFailure(message: e.toString()));
      }
    } else {
      return ApiFailure(error: (response as ApiFailure).error);
    }
  }
}
