import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_colors.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText, this.suffixIcon, this.obscureText = false, this.keyboardType});
  final String hintText;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintStyle: TextStyles.bold16.copyWith(color: AppColors.hintColor),
        filled: true,
        fillColor: const Color(0xFFF9FAFA),
        hintText: hintText,
        suffixIcon: suffixIcon,
        
        border: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Color(0xFFE6E9EA)),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Color(0xFFE6E9EA)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Color(0xFFE6E9EA)),
        ),
        
      ),
    );
    
  }
}