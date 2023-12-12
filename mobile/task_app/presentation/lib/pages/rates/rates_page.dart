import 'package:auto_route/auto_route.dart';
import 'package:core/common/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/blocs/cubit/rates/rates_state.dart';
import 'package:presentation/common/router/app_router.dart';
import 'package:presentation/model/rates/rate_ui_model.dart';
import 'package:presentation/widgets/list/rate_list_item.dart';

import '../../blocs/cubit/rates/rates_cubit.dart';

@RoutePage()
class RatesPage extends StatefulWidget {
  const RatesPage({Key? key}) : super(key: key);

  @override
  RatesPageState createState() => RatesPageState();
}

class RatesPageState extends State<RatesPage> {
  @override
  void initState() {
    super.initState();
    refreshData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exchange Rates"),
      ),
      body: BlocBuilder<RatesCubit, RatesState>(
        builder: (context, state) {
          if (state is RatesLoadingState) {
            // Display a loading indicator when the state is loading
            return const Center(child: CircularProgressIndicator());
          } else if (state is RatesLoadedState) {
            return Padding(
              padding: const EdgeInsets.all(AppPadding.p16),
              child: ListView.builder(
                itemCount: state.rates.length,
                itemBuilder: (context, index) {
                  final rate = state.rates[index];
                  return RateListItem(
                    model: RateUIModel.fromEntity(state.rates[index]),
                    onTap: () => context.navigateTo(RateDetailRoute(
                        codeArgument: state?.rates?[index]?.code ?? '')),
                  );
                },
              ),
            );
          } else if (state is RatesErrorState) {
            // Display an error message if there is an error
            return Center(child: Text('Error: ${state.message}'));
          }
          // Display a placeholder (or empty container) when in an initial state
          return Center(child: Text('No data available'));
        },
      ),
    );
  }

  void refreshData() {
    context.read<RatesCubit>().getRates();
  }
}
