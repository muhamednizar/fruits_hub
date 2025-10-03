  import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_colors.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_text_styles.dart';

AppBar buildAppBar(BuildContext context, {required String text}) {
    return AppBar(
      centerTitle: true,
      title: Text(text,
          style: TextStyles.bold19.copyWith(color: AppColors.blackColor)
          ),
      leading: IconButton(
        onPressed: () {
          if(Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        },
        icon: const Icon(Icons.arrow_back_ios_new),
      ),
    );
  }

