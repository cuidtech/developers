import 'package:auto_route/auto_route.dart';
import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/models/state_status.dart';
import '../blocs/bloc/exchange_rates_bloc.dart';

@RoutePage()
class ExchangeRatePage extends StatelessWidget implements AutoRouteWrapper {
  final ExchangeRatesBloc exchangeRatesBloc;
  const ExchangeRatePage({super.key, required this.exchangeRatesBloc});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: exchangeRatesBloc,
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExchangeRatesBloc, ExchangeRatesState>(
      builder: (context, state) {
        late final item = state.selectedExchangeRate!;
        return Scaffold(
          appBar: AppBar(
            title: Text(state.selectedExchangeRate?.code ?? ''),
            actions: [
              CircleAvatar(
                backgroundColor: item.isRising ? Colors.green : Colors.red,
                child: Icon(
                  item.isRising ? Icons.arrow_upward : Icons.arrow_downward,
                  color: Colors.white,
                ),
              )
            ],
          ),
          body: Column(
            children: [
              if (state.status is LoadingStatus) const LinearProgressIndicator(),
              if (state.status is! LoadingStatus && state.selectedExchangeRate != null) ...[
                const SizedBox(
                  height: 20,
                ),
                Sparkline(
                  data: item.rates,
                  lineWidth: 3,
                  fillColor: item.isRising ? Colors.green.shade200 : Colors.red.shade200,
                  fillMode: FillMode.below,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    item.description,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
