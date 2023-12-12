import 'package:flutter/material.dart';
import 'package:presentation/model/rates/rate_ui_model.dart';
import 'package:core/core.dart';

class RateListItem extends StatelessWidget {
  RateUIModel model;
  VoidCallback? onTap;

  RateListItem({super.key, required this.model, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Row(
          children: [
            Icon(
              model.isGrowing
                  ? Icons.keyboard_arrow_up_sharp
                  : Icons.keyboard_arrow_down_sharp,
              color: model.isGrowing
                  ? ColorManager.greenIconColor
                  : ColorManager.redIconColor,
              size: AppSize.s24,
            ),
            Text(
              model.value,
              style: getTitleStyle(color: ColorManager.primaryTextColor),
            ),
          ],
        ),
        subtitle: Text(model.description, style: getRegularStyle(color: ColorManager.secondaryTextColor),),
        onTap: onTap,
      ),
    );
  }
}
