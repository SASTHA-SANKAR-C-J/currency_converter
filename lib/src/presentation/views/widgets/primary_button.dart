import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:currency_converter/app/theme/app_colors.dart';
import 'package:currency_converter/app/theme/app_typography.dart';
import 'package:currency_converter/src/presentation/views/widgets/custom_loading_widget.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';


class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.width,
    this.height,
    this.padding,
    this.style,
    this.shape,
    this.borderColor,
    this.iconPath,
    this.isEndIcon = false,
    this.iconColor,
    this.enableSpaceBetweenTextAndIcon = false,
    this.contentPadding,
    this.textSize,
    this.isLoading = false,
    this.isForStatusFilter = false,
    this.iconSize,
    this.isActive = true,
  });

  final Function() onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final TextStyle? style;
  final double? shape;
  final Color? borderColor;
  final String? iconPath;
  final double? iconSize;
  final bool? isEndIcon;
  final Color? iconColor;
  final bool? enableSpaceBetweenTextAndIcon;
  final double? contentPadding;
  final double? textSize;
  final bool isLoading;
  final bool isForStatusFilter;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(shape ?? 8.dp),
        onTap: isLoading || !isActive ? null : onPressed,
        splashColor: Colors.white.withValues(alpha: 0.1),
        //  (backgroundColor != null?Colors.black: const Color.fromARGB(255, 111, 2, 206))
        //     .withOpacity(0.7),
        highlightColor: Colors.white.withValues(alpha: 0.1),
        // (backgroundColor != null?Colors.black: const Color.fromARGB(255, 111, 2, 206))
        //     .withOpacity(0.7),
        child: Ink(
          decoration: BoxDecoration(
            gradient: backgroundColor == null
                ? const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff565DA7),
                      Color(0xff626DD1),
                    ],
                  )
                : null,
            color: !isActive
                ? AppColors.labGrey
                : backgroundColor ?? AppColors.primaryColor,
            borderRadius: BorderRadius.circular(shape ?? 8.dp),
            border: Border.all(
              color: borderColor ?? Colors.transparent,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: contentPadding ?? 12.dp),
            width: width ?? 100.w,
            height: height ?? 43.dp,
            child: isLoading
                ? const CustomLoadingWidget()
                : Row(
                    mainAxisAlignment: enableSpaceBetweenTextAndIcon!
                        ? MainAxisAlignment.spaceBetween
                        : MainAxisAlignment.center,
                    children: [
                      if (isEndIcon == false)
                        if (iconPath != null) ...[
                          Image.asset(
                            iconPath!,
                            height: iconSize ?? 20.dp,
                            width: iconSize ?? 20.dp,
                            // colorFilter: iconColor != null
                            //     ? ColorFilter.mode(iconColor!, BlendMode.srcIn)
                            //     : null,
                          ),
                          Gap(5.dp)
                        ],
                      SizedBox(
                        width: isForStatusFilter ? 100.dp : null,
                        child: Text(
                          text,
                          textAlign: TextAlign.center,
                          style: style ??
                              AppTypography.roundoSemiBold.copyWith(
                                color: textColor ?? Colors.white,
                                fontSize: textSize ?? 16.sp,
                                height: .07.dp,
                              ),
                        ),
                      ),
                      if (isEndIcon == true)
                        if (iconPath != null) ...[
                          Gap(5.dp),
                          Image.asset(
                            iconPath!,
                            height: iconSize ?? 20.dp,
                            width: iconSize ?? 20.dp,
                            // colorFilter: iconColor != null
                            //     ? ColorFilter.mode(iconColor!, BlendMode.srcIn)
                            //     : null,
                          ),
                        ],
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
