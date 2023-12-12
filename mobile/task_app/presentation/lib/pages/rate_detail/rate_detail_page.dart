import 'package:auto_route/annotations.dart';
import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:core/common/font_manager.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/blocs/cubit/rates/rate_detail_cubit.dart';
import 'package:presentation/blocs/cubit/rates/rate_detail_state.dart';

@RoutePage()
class RateDetailPage extends //StatelessWidget {
    StatefulWidget {
  final String codeArgument;

  const RateDetailPage({Key? key, required this.codeArgument})
      : super(key: key);

  @override
  RateDetailPageState createState() => RateDetailPageState();
}

class RateDetailPageState extends State<RateDetailPage> {
  @override
  void initState() {
    super.initState();
    context.read<RateDetailCubit>().getRateDetail(widget.codeArgument);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Currency ${widget.codeArgument}"),
      ),
      body: BlocBuilder<RateDetailCubit, RateDetailState>(
        builder: (context, state) {
          if (state is RateDetailLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is RateDetailLoadedState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(AppPadding.p16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            state.rateDetail.isGrowing
                                ? Icons.keyboard_arrow_up_sharp
                                : Icons.keyboard_arrow_down_sharp,
                            color: state.rateDetail.isGrowing
                                ? ColorManager.greenIconColor
                                : ColorManager.redIconColor,
                            size: AppSize.s24,
                          ),
                          Text(
                            state.rateDetail.value,
                            style: getTitleStyle(
                                color: ColorManager.primaryTextColor),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppSize.s32,
                      ),
                      Text(
                        state?.rateDetail.description ?? "",
                        style: getRegularStyle(
                            color: ColorManager.secondaryTextColor,
                            fontSize: FontSize.s16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: AppPadding.p32),
                  child: SizedBox(
                    height: AppSize.s256,
                    child: Sparkline(
                      data: state.rateDetail.rates,
                      averageLine: true,
                      averageLabel: true,
                    ),
                  ),
                ),
              ],
            );
          } else if (state is RateDetailErrorState) {
            return Center(child: Text('Error: ${state.message}'));
          }
          return const Center(child: Text('No data available'));
        },
      ),
    );
  }
}
