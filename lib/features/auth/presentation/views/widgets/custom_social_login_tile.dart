import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_colors.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_text_styles.dart';

class CustomSocialLoginTile extends StatelessWidget {
  const CustomSocialLoginTile({super.key, required this.title, required this.image, required this.onTap});
  final String title;
  final String image;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Center(child: Text(title,style: TextStyles.semiBold16.copyWith(color: AppColors.blackColor),)),
      leading: SvgPicture.asset(image),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side:  BorderSide(color: AppColors.hintColor.withOpacity(0.4),
        ),  
      ),
      onTap: onTap,
      
    );
  }
}