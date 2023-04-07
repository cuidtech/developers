// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:exchange_rates/di/third_party_modules.dart' as _i8;
import 'package:exchange_rates/features/exchange_rates/data_source/exchange_rate_client.dart'
    as _i4;
import 'package:exchange_rates/features/exchange_rates/exchange_rate_details/cubit/exchange_rate_details_cubit.dart'
    as _i7;
import 'package:exchange_rates/features/exchange_rates/exchange_rate_list/cubit/exchange_rates_cubit.dart'
    as _i6;
import 'package:exchange_rates/features/exchange_rates/repository/exchange_repository.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql/client.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final thirdPartyModule = _$ThirdPartyModule();
    gh.singleton<_i3.GraphQLClient>(thirdPartyModule.graphQlClient);
    gh.singleton<_i4.ExchangeRateClient>(
      _i4.ExchangeRateClient(gh<_i3.GraphQLClient>()),
    );
    gh.factory<_i5.ExchangeRateRepository>(
      () => _i5.ExchangeRateRepository(gh<_i4.ExchangeRateClient>()),
    );
    gh.factory<_i6.ExchangeRatesCubit>(
      () => _i6.ExchangeRatesCubit(gh<_i5.ExchangeRateRepository>()),
    );
    gh.factory<_i7.ExchangeRateDetailsCubit>(
      () => _i7.ExchangeRateDetailsCubit(gh<_i5.ExchangeRateRepository>()),
    );
    return this;
  }
}

class _$ThirdPartyModule extends _i8.ThirdPartyModule {}
