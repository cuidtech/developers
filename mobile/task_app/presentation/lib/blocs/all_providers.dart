import 'package:core/di/core_di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/blocs/cubit/rates/rate_detail_cubit.dart';
import 'package:presentation/blocs/cubit/rates/rates_cubit.dart';

class AllProviders extends StatelessWidget {
  final Widget child;

  const AllProviders({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<RatesCubit>()),
        BlocProvider(create: (context) => getIt<RateDetailCubit>()),
      ],
      child: child,
    );
  }
}
