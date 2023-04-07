import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:exchange_rates/core/utils/enums.dart';
import 'package:exchange_rates/di/injection.dart';
import 'package:exchange_rates/features/exchange_rates/exchange_rate_details/cubit/exchange_rate_details_cubit.dart';
import 'package:exchange_rates/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
part 'widgets/_line_chart.dart';

class ExchangeRateDetailsScreen extends StatelessWidget {
  const ExchangeRateDetailsScreen({super.key, required this.code});

  final String code;
  static const String path = 'exchange_rate_details';

  static GoRoute route() {
    return GoRoute(
      path: path,
      name: path,
      pageBuilder: (context, state) {
        final code = state.extra! as String;
        return CustomTransitionPage(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: BlocProvider(
            create: (context) =>
                getIt<ExchangeRateDetailsCubit>()..getExchangeRateDetails(code),
            child: ExchangeRateDetailsScreen(
              code: code,
            ),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('${AppLocalizations.of(context).code}: $code'),
      ),
      body: SafeArea(
        child: BlocBuilder<ExchangeRateDetailsCubit, ExchangeRateDetailsState>(
          builder: (context, state) {
            if (state.stateStatus == StateStatus.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.stateStatus == StateStatus.success) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text('${state.exchangeRateDetail?.description}'),
                    const SizedBox(
                      height: 10,
                    ),
                    _LineChart(
                      ratesList: state.exchangeRateDetail!.rates,
                    )
                  ],
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
