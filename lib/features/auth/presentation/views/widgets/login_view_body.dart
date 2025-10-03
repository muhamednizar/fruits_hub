import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_colors.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_images.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text__form_field.dart';
import 'package:fruits_hub/features/auth/presentation/views/signup_view.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/build_or_widget.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/custom_social_login_tile.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/dont_have_an_account_or_have.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  bool isPasswordNotVisible = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 24,
            ),
            const CustomTextFormField(
              hintText: 'البريد الإلكتروني',
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormField(
                obscureText: isPasswordNotVisible,
                hintText: 'كلمة المرور',
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isPasswordNotVisible = !isPasswordNotVisible;
                      });
                    },
                    icon: Icon(isPasswordNotVisible
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined))),
            const SizedBox(
              height: 16,
            ),
            Text(
              'هل نسيت كلمة المرور؟',
              style:
                  TextStyles.semiBold13.copyWith(color: AppColors.primaryColor),
            ),
            const SizedBox(
              height: 16,
            ),
            CustomButton(
              text: 'تسجيل الدخول',
              onPressed: () {},
              width: double.infinity,
              height: 54,
            ),
            
            const SizedBox(height: 33),

            DontHaveAnAccountOrHaveAnAccount(
              onTap: () {
                Navigator.pushNamed(context, SignUpView.routeName);
              },
            ),

            const SizedBox(height: 49),

            const OrDivider(),

            const SizedBox(height: 16),

            CustomSocialLoginTile(
                title: 'تسجيل الدخول بواسطة جوجل',
                image: AppImages.googleIcon,
                onTap: () {},
                ),
            const SizedBox(height: 16),
            CustomSocialLoginTile(
                title: 'تسجيل الدخول بواسطة أبل',
                image: AppImages.appleIcon,
                onTap: () {}
                ),
            const SizedBox(height: 16),
            CustomSocialLoginTile(
                title: 'تسجيل الدخول بواسطة فيسبوك',
                image: AppImages.facebookIcon,
                onTap: () {}
                ),
          ],
        ),
      ),
    );
  }
}

