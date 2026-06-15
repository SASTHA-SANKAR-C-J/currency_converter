import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:currency_converter/app/theme/app_colors.dart';
import 'package:currency_converter/app/theme/app_typography.dart';
import 'package:currency_converter/src/presentation/constants/app_strings.dart';
import 'package:currency_converter/src/presentation/views/widgets/background_texture.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) context.router.replacePath('/converter');
    });
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundTexture(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.currency_exchange,
                size: 80.dp,
                color: AppColors.primaryColor,
              ),
              Gap(24.dp),
              Text(
                AppStrings.appName,
                style: AppTypography.roundoBold.copyWith(
                  fontSize: 28.sp,
                  color: AppColors.primaryColor,
                ),
              ),
              Gap(8.dp),
              Text(
                'Real-time rates at your fingertips',
                style: AppTypography.roundoRegular.copyWith(
                  fontSize: 14.sp,
                  color: AppColors.textLightGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
