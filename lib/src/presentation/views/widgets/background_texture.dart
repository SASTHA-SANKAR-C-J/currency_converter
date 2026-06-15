import 'package:flutter/material.dart';
import 'package:currency_converter/app/theme/app_colors.dart';
import 'package:currency_converter/src/presentation/constants/app_images.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';


class BackgroundTexture extends StatelessWidget {
  final Widget child;
  const BackgroundTexture({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      decoration: const BoxDecoration(
        color: AppColors.bgColor,
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            AppImages.backgroundTexture,
            fit: BoxFit.fill,
            height: 358.dp,
            width: 100.w,
          ),
          child,
        ],
      ),
    );
  }
}
