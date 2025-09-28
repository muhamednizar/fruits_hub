import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_colors.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_images.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_text_styles.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageViewBody extends StatelessWidget {
    const OnBoardingPageViewBody({
      super.key,
      required this.pageController,});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,

      children:  [
        PageViewItem(
          isSkip: true,
            backgroundImage: AppImages.backgroundImageItem1,
            image: AppImages.imageItem1,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('مرحبًا بك في',style: TextStyles.bold23.copyWith(color: AppColors.blackColor)),
                Text(' HUB',style: TextStyles.bold23.copyWith(color: AppColors.secondaryColor)),
                Text('Fruit',style: TextStyles.bold23.copyWith(color: AppColors.primaryColor)),
              ],
            ),
            description: 'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.'),
            PageViewItem(
            isSkip: false,
            backgroundImage: AppImages.backgroundImageItem2,
            image: AppImages.imageItem2,
            title: Text('ابحث وتسوق',style: TextStyles.bold23.copyWith(color: AppColors.blackColor)),
            description: 'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',),    
            ],
    
    );
  }
}
