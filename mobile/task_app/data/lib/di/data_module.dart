import 'package:data/datasources/rates/rates_datasource.dart';
import 'package:data/repositories/rates/rates_repository.dart';
import 'package:core/core.dart';

import '../datasources/graphql/gralhql_service.dart';


Future<void> initDataModule() async {
  getIt.registerLazySingleton<RatesRepository>(
      () => RatesRepositoryImpl(dataSource: getIt()));
  getIt.registerLazySingleton(() => GraphQLService());
  getIt.registerLazySingleton<RatesDataSource>(() => RatesDataSourceImpl(graphQLService: getIt()));
}
