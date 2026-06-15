import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:currency_converter/app/theme/app_colors.dart';
import 'package:currency_converter/app/theme/app_typography.dart';
import 'package:currency_converter/app/utils/uppercase_textformatter.dart';
import 'package:currency_converter/src/presentation/constants/app_constants.dart';
import 'package:currency_converter/src/presentation/constants/app_images.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';


class CommonTextField extends StatefulWidget {
  const CommonTextField({
    super.key,
    required this.header,
    this.headerSuffix,
    this.isPassword = false,
    this.readOnly = false,
    this.enableInteractiveSelection,
    this.isEditable = true,
    this.unFocusOnOutsideTap = true,
    this.controller,
    this.hintText,
    this.textInputType,
    this.onChanged,
    this.onSaved,
    this.validator,
    this.suffix,
    this.hintStyle,
    this.onTap,
    this.maxLength,
    this.focusNode,
    this.isForVehicleNumber = false,
    this.inputFormatter,
    this.textInputAction,
    this.scrollPadding,
  });

  final String header;
  final String? headerSuffix;
  final bool isPassword;
  final bool readOnly;
  final bool isEditable;
  final bool? enableInteractiveSelection;
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? textInputType;
  final Function(String)? onChanged;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final Widget? suffix;
  final TextStyle? hintStyle;
  final VoidCallback? onTap;
  final int? maxLength;
  final bool unFocusOnOutsideTap;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatter;
  final TextInputAction? textInputAction;
  final bool? isForVehicleNumber;
  final double? scrollPadding;
  @override
  CommonTextFieldState createState() => CommonTextFieldState();
}

class CommonTextFieldState extends State<CommonTextField> {
  bool _isPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _isPasswordVisible = !widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.isEditable ? Colors.white : AppColors.containerGrey,
        borderRadius: BorderRadius.circular(8.dp),
        border: Border.all(color: AppColors.borderGrey),
        gradient: const LinearGradient(
          colors: [AppColors.containerGrey, Colors.white],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 20.dp,
            padding:
                const EdgeInsets.symmetric(horizontal: AppConstants.baseMargin),
            child: Row(
              children: [
                Center(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: widget.header,
                          style: AppTypography.roundoSemiBold.copyWith(
                            color: AppColors.textGrey,
                            height: 1.5.dp,
                            fontSize: 11.sp,
                          ),
                        ),
                        if (widget.headerSuffix != null)
                          TextSpan(
                            text: " ${widget.headerSuffix}",
                            style: AppTypography.roundoSemiBold.copyWith(
                              color: AppColors.primaryColor,
                              height: 1.5.dp,
                              fontSize: 11.sp,
                            ),
                          ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 44.dp,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.dp),
                bottomRight: Radius.circular(8.dp),
              ),
              // border: const Border(
              //   right: BorderSide(color: AppColors.borderGrey),
              //   left: BorderSide(color: AppColors.borderGrey),
              //   bottom: BorderSide(color: AppColors.borderGrey),
              // ),
            ),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(bottom: 10.dp, left: 2.dp, right: 2.dp),
            child: SizedBox(
              height: 36.dp,
              child: TextFormField(
                inputFormatters: widget.inputFormatter ??
                    (widget.isForVehicleNumber == true
                        ? [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[A-Za-z0-9]')),
                            UpperCaseTextFormatter()
                          ]
                        : null),
                textInputAction: widget.textInputAction,
                focusNode: widget.focusNode,
                scrollPadding:
                    EdgeInsets.only(bottom: widget.scrollPadding ?? 10.h),
                onTapOutside: (val) {
                  if (widget.unFocusOnOutsideTap) {
                    FocusScope.of(context).unfocus();
                  }
                },
                maxLength: widget.maxLength,
                controller: widget.controller,
                cursorHeight: 25.sp,
                onTap: () {
                  if (widget.onTap != null) {
                    widget.onTap!();
                  }
                },
                obscureText: widget.isPassword && !_isPasswordVisible,
                keyboardType: widget.textInputType,
                enableInteractiveSelection: widget.enableInteractiveSelection,
                obscuringCharacter: "*",
                onChanged: widget.isEditable ? widget.onChanged : null,
                onSaved: widget.isEditable ? widget.onSaved : null,
                validator: widget.isEditable ? widget.validator : null,
                readOnly: widget.readOnly,
                style: AppTypography.roundoSemiBold.copyWith(
                  color: AppColors.textBlack,
                  fontSize: 18.sp,
                ),
                decoration: InputDecoration(
                  counterText: '',
                  isDense: true,
                  hintStyle: widget.hintStyle ??
                      AppTypography.roundoSemiBold.copyWith(
                        color: AppColors.textLightGrey.withValues(alpha: 0.5),
                        fontSize: 16.sp,
                      ),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: widget.isPassword
                      ? Padding(
                          padding: EdgeInsets.only(right: 10.dp),
                          child: InkWell(
                            onTap: widget.isEditable
                                ? () {
                                    setState(() {
                                      _isPasswordVisible = !_isPasswordVisible;
                                    });
                                  }
                                : null,
                            child: Image.asset(
                              _isPasswordVisible
                                  ? AppImages.closedEyeIconPasswordField
                                  : AppImages.openedEyeIconPasswordField,
                              height: 24.dp,
                            ),
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.only(
                              right: AppConstants.baseRadius.dp),
                          child: widget.suffix),
                  suffixIconConstraints: BoxConstraints(
                    maxHeight: 24.dp,
                  ),
                  contentPadding:
                      EdgeInsets.only(left: 10.dp, right: 10.dp, top: 10.dp),
                  hintText: widget.hintText,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
