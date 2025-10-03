import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_colors.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: Divider(
          color: AppColors.hintColor,
        )),
        const SizedBox(width: 20),
        Text('أو',
            style: TextStyles.semiBold16
                .copyWith(color: AppColors.blackColor)),
        const SizedBox(width: 20),
        const Expanded(
            child: Divider(
          color: AppColors.hintColor,
        )),
      ],
    );
  }
}
