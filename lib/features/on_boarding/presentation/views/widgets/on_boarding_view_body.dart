import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_colors.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/services/shared_preferences_singelton.dart';
import 'package:fruits_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/on_boarding_page_view_body.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController controller;
    int currentPage = 0;
  @override
  initState() {
    super.initState();
    controller = PageController();
    controller.addListener(() {
      currentPage = controller.page!.round();
      setState(() {
      });
    });
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: SafeArea(
                child: OnBoardingPageViewBody(
          pageController: controller,
        ))),
        AnimatedSmoothIndicator( 
          activeIndex: currentPage,
          count: 2,    
          effect: WormEffect(
            activeDotColor: AppColors.primaryColor,
            dotColor: currentPage == 0  ? AppColors.primaryColor.withOpacity(0.4) : AppColors.primaryColor,
          ), 
        ),
        Visibility(
            visible: currentPage == 1,
            maintainState: true,
            maintainAnimation: true,
            maintainSize: true,
            
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding, vertical: 29),
              child: CustomButton(
                width: 343,
                height: 54,
                text: 'ابدأ الان',
                onPressed: () {
                  Prefs.setBool(kisOnboardingSeen, true);
                  Navigator.pushReplacementNamed(context, LoginView.routeName);
                },
              ),
            ),
          )
        ],
          
          );
        
              
    
  }
}
