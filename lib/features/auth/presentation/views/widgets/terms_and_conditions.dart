import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_colors.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_text_styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key, this.onChanged, required this.value});
  final void Function(bool?)? onChanged;
  final bool value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Transform.translate(
          offset: const Offset(5, -5),
          child: Transform.scale(
            scale: 1.1,
            child: Checkbox(
              value: value,
              onChanged: onChanged,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
        Expanded(
          child: Text.rich(
            
            TextSpan(
              children: [
                TextSpan(
                  text: ' من خلال إنشاء حساب ، فإنك توافق على ',
                  style: TextStyles.semiBold13
                      .copyWith(color: AppColors.hintColor),
                ),
                TextSpan(
                  text: 'الشروط والأحكام الخاصة بنا',
                  style: TextStyles.semiBold13
                      .copyWith(color: AppColors.primaryColor),
                ),
              ],
            ),
            textAlign: TextAlign.start,
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
