import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text('تخطي'),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 64),
        title,
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(description,textAlign: TextAlign.center,),
        ),
      ],
    );
  }
}
