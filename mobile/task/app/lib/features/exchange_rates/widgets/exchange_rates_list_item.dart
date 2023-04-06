import 'package:app/features/exchange_rates/blocs/bloc/exchange_rates_bloc.dart';
import 'package:app/features/exchange_rates/models/exchange_rate.dart';
import 'package:app/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExhcangeRatesListItem extends StatelessWidget {
  final ExchangeRate item;
  const ExhcangeRatesListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ExchangeRatesBloc>();
    return ListTile(
      onTap: () {
        context.router.push(ExchangeRateRoute(exchangeRatesBloc: bloc));
        bloc.add(ExchangeRatesEvent.select(item.code));
      },
      leading: CircleAvatar(
        backgroundColor: item.isRising ? Colors.green : Colors.red,
        child: Icon(
          item.isRising ? Icons.arrow_upward : Icons.arrow_downward,
          color: Colors.white,
        ),
      ),
      title: Text(
        item.code,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      trailing: Text(
        item.rates.first.toStringAsFixed(2),
        style: Theme.of(context).textTheme.titleMedium?.copyWith(color: item.isRising ? Colors.green : Colors.red),
      ),
    );
  }
}
