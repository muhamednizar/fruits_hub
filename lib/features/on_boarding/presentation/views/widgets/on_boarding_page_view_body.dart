import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper_functions/utils/app_images.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageViewBody extends StatelessWidget {
  const OnBoardingPageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageViewItem(
            backgroundImage: AppImages.backgroundImageItem1,
            image: AppImages.imageItem1,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('مرحبًا بك في'),
                Text('HUB',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Color(0xFFF4A91F)),),
                Text('Fruit',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Color(0xFF1B5E37)),),
              ],
            ),
            description: 'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.'),
        PageViewItem(
            backgroundImage: AppImages.backgroundImageItem2,
            image: AppImages.imageItem2,
            title: Text('مرحبًا بك في'),
            description: 'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',),    ],
    
    );
  }
}
