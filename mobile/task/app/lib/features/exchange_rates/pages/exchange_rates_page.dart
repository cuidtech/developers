import 'package:app/common/models/state_status.dart';
import 'package:app/features/exchange_rates/widgets/exchange_rates_list_item.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/bloc/exchange_rates_bloc.dart';
import '../repository/exchange_rates_repository.dart';
import '../repository/i_exchange_rates_repository.dart';

@RoutePage()
class ExchangeRatesPage extends StatelessWidget implements AutoRouteWrapper {
  const ExchangeRatesPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return RepositoryProvider<IExchangeRatesRepository>(
      create: (context) => ExchangeRatesRepository(
        graphQLClient: context.read(),
      ),
      child: BlocProvider(
        create: (context) => ExchangeRatesBloc(
          repository: context.read(),
        )..add(const ExchangeRatesEvent.fetch()),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exchange Rates'),
      ),
      body: BlocConsumer<ExchangeRatesBloc, ExchangeRatesState>(
        listener: (context, state) {
          if (state.status is ErrorStatus) {
            final message = (state.status as ErrorStatus).message;
            if (message != null) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: Text(message),
                ),
              );
            }
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              if (state.status is LoadingStatus) const LinearProgressIndicator(),
              Expanded(
                child: ListView.builder(
                  itemCount: state.exchangeRates.length,
                  itemBuilder: (context, index) => ExhcangeRatesListItem(
                    item: state.exchangeRates[index],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
