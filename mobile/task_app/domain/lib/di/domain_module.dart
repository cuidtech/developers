import 'package:core/di/core_di.dart';
import 'package:domain/usecases/rates/get_rate_detail_usecase.dart';
import 'package:domain/usecases/rates/get_rates_usecase.dart';

Future<void> initDomainModule() async {
  getIt.registerLazySingleton(() => GetRateDetailUseCase(getIt()));
  getIt.registerLazySingleton(() => GetRatesUseCase(getIt()));
}
