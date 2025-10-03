import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_images.dart';
import 'package:fruits_hub/core/services/shared_preferences_singelton.dart';
import 'package:fruits_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}



class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    executeNavigation();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(AppImages.splashTop),
          ],
        ),
        SvgPicture.asset(AppImages.logo),
        SvgPicture.asset(AppImages.splashBottom,fit: BoxFit.fill,),
      ],
    );
  }
  
  void executeNavigation() {
    bool isOnboardingSeen = Prefs.getBool(kisOnboardingSeen);
    Future.delayed(const Duration(seconds: 2), () {
      if(isOnboardingSeen) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      }else{
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
      
    });
  }
}