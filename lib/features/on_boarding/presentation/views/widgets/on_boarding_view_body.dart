import 'package:flutter/material.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/on_boarding_page_view_body.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: SafeArea(child: OnBoardingPageViewBody())),
      ],
    );
  }
}