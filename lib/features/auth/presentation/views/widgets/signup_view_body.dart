import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text__form_field.dart';
import 'package:fruits_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/dont_have_an_account_or_have.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}
  bool isPasswordNotVisible = true;
  bool isTermsAndConditions = false;
class _SignupViewBodyState extends State<SignupViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24,),
              const CustomTextFormField(
                keyboardType: TextInputType.name,
                hintText: 'الاسم كامل',
                
              ),
              const SizedBox(height: 16,),
              const CustomTextFormField(
                keyboardType: TextInputType.emailAddress,
                hintText: 'البريد الإلكتروني',
              ),
              const SizedBox(height: 16,),
              CustomTextFormField(
                obscureText: isPasswordNotVisible,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isPasswordNotVisible = !isPasswordNotVisible;
                    });
                  },
                  icon: Icon(isPasswordNotVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                ),
                hintText: 'كلمة المرور',
              ),
              const SizedBox(height: 16,),
              SizedBox(
                width: double.infinity,
                height: 54,
                child: TermsAndConditions(
                  value: isTermsAndConditions,
                  onChanged: (value) {
                    setState(() {
                      isTermsAndConditions = value ?? false;
                    });
                  }
                ),
                
              ),
            const SizedBox(height: 20,),
              CustomButton(
              text: 'إنشاء حساب جديد',
              onPressed: () {},
              width: double.infinity,
              height: 54,
            ),
            const SizedBox(height: 26),
            DontHaveAnAccountOrHaveAnAccount(
              hintText1: 'تمتلك حساب بالفعل؟  ',
              hintText2: 'تسجيل الدخول',
              onTap: () {
                Navigator.pushNamed(context, LoginView.routeName);
              },
            ),
            ],
          ),
        ),
      ),
    );
  }
}