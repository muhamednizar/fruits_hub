import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_colors.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_text_styles.dart';

class DontHaveAnAccountOrHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccountOrHaveAnAccount({
    super.key,
    this.hintText1 = 'ليس لديك حساب؟',
    this.hintText2 = ' قم بإنشاء حساب ',
    this.width, required this.onTap,
  });
  final String hintText1;
  final String hintText2;
  final double? width;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(hintText1,
            style: TextStyles.semiBold16
                .copyWith(color: AppColors.hintColor)),
        GestureDetector(
          onTap: onTap,
          child: Text(hintText2,
              style: TextStyles.semiBold16
                  .copyWith(color: AppColors.primaryColor)),
        ),
      ],
    );
  }
}

