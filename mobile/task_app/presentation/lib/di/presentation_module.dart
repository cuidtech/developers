import 'package:core/di/core_di.dart';
import 'package:presentation/blocs/cubit/rates/rate_detail_cubit.dart';
import 'package:presentation/blocs/cubit/rates/rates_cubit.dart';

Future<void> initPresentationModule() async {
  getIt.registerFactory(() => RatesCubit(getRatesUseCase: getIt()));
  getIt.registerFactory(() => RateDetailCubit(getRateDetailUseCase: getIt()));
}
