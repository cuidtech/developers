import 'package:exchange_rates/core/widgets/error_text.dart';
import 'package:exchange_rates/di/injection.dart';
import 'package:exchange_rates/features/exchange_rates/exchange_rate_details/view/exchange_rate_details_screen.dart';
import 'package:exchange_rates/features/exchange_rates/exchange_rate_list/cubit/exchange_rates_cubit.dart';
import 'package:exchange_rates/features/exchange_rates/repository/models/exchange_rate.dart';
import 'package:exchange_rates/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

part 'widgets/_exchange_rate_card.dart';

class ExchangeRateListScreen extends StatelessWidget {
  const ExchangeRateListScreen({super.key});

  static const String path = '/';

  static GoRoute route() {
    return GoRoute(
      path: path,
      name: path,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          restorationId: state.pageKey.value,
          child: BlocProvider(
            create: (_) => getIt<ExchangeRatesCubit>()..getExchangeRates(),
            child: const ExchangeRateListScreen(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
        );
      },
      routes: [ExchangeRateDetailsScreen.route()],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<ExchangeRatesCubit, ExchangeRatesState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isSuccess) {
              return Column(
                children: [
                  Text(
                    AppLocalizations.of(context).exchangeRates,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.exchangeRates.length,
                      itemBuilder: (context, index) {
                        return _ExchangeRateCard(
                          exchangeRate: state.exchangeRates[index],
                        );
                      },
                    ),
                  ),
                ],
              );
            } else if (state.isFailure) {
              return ErrorText(errorMessage: state.errorMessage);
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
