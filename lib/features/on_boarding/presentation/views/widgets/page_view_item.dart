import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_text_styles.dart';
import 'package:fruits_hub/core/services/shared_preferences_singelton.dart';
import 'package:fruits_hub/features/auth/login/presentation/views/login_view.dart';

class PageViewItem extends StatelessWidget {
  final String backgroundImage;
  final String image;
  final Widget title;
  final String description;
  final bool isSkip;
  const PageViewItem(
      {super.key,
      required this.backgroundImage,
      required this.image,
      required this.title,
      required this.description,
      required this.isSkip,});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                  child: SvgPicture.asset(
                backgroundImage,
                fit: BoxFit.fill,
              )),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SvgPicture.asset(image)
                  ),
              Visibility(
                visible: isSkip,
                child:  Padding(
                  padding: const EdgeInsets.all(16),
                  child: GestureDetector(onTap: () {
                    Prefs.setBool(kisOnboardingSeen, true);
                    Navigator.pushReplacementNamed(context, LoginView.routeName);
                  }, 
                  child: Text('تخطي',style: TextStyles.semiBold13.copyWith(color: Colors.grey.shade500))),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 64),
        title,
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(description,textAlign: TextAlign.center,style: TextStyles.semiBold13.copyWith(color: const Color(0xFF4E5556))),
        ),
      ],
    );
  }
}
