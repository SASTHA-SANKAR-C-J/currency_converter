import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:currency_converter/app/theme/app_colors.dart';
import 'package:currency_converter/app/theme/app_typography.dart';
import 'package:currency_converter/src/presentation/constants/app_images.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class EmptyWidget extends StatelessWidget {
  final double? imageHeight;
  final String? text;
  final TextStyle? textStyle;
  const EmptyWidget({super.key, this.imageHeight, this.text, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
          tween: Tween<double>(
            begin: 0,
            end: 1,
          ),
          builder: (context, value, _) {
            return Opacity(
              opacity: value,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.appLogo,
                    height: imageHeight ?? 112.37.dp,
                    color: AppColors.grey,
                  ),
                  Gap(18.dp),
                  SizedBox(
                    width: 254.dp,
                    child: Text(text ?? 'No data available at the moment. Please check back later!',
                        textAlign: TextAlign.center,
                        style: textStyle ??
                            AppTypography.roundoMedium.copyWith(
                              fontSize: 14.sp,
                              color: const Color(0xFF5C486D),
                            )),
                  )
                ],
              ),
            );
          }),
    );
  }
}
