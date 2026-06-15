import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:currency_converter/app/theme/app_colors.dart';
import 'package:currency_converter/app/theme/app_typography.dart';
import 'package:currency_converter/src/domain/models/currency_info.dart';
import 'package:currency_converter/src/presentation/constants/app_strings.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class CurrencyPicker extends StatelessWidget {
  final String label;
  final String selectedCurrency;
  final List<CurrencyInfo> currencies;
  final ValueChanged<String> onSelected;

  const CurrencyPicker({
    super.key,
    required this.label,
    required this.selectedCurrency,
    required this.currencies,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTypography.roundoRegular.copyWith(
            fontSize: 11.sp,
            color: AppColors.textLightGrey,
          ),
        ),
        Gap(4.dp),
        GestureDetector(
          onTap: () => _showPicker(context),
          child: Container(
            width: 100.w,
            padding: EdgeInsets.symmetric(horizontal: 12.dp, vertical: 10.dp),
            decoration: BoxDecoration(
              color: AppColors.containerGrey,
              borderRadius: BorderRadius.circular(8.dp),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedCurrency,
                  style: AppTypography.roundoSemiBold.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.textBlack,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: AppColors.textGrey,
                  size: 20.dp,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.dp)),
      ),
      builder: (ctx) {
        return DraggableScrollableSheet(
          initialChildSize: 0.6,
          maxChildSize: 0.9,
          minChildSize: 0.3,
          expand: false,
          builder: (context, scrollController) {
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.dp),
                  child: Text(
                    label == AppStrings.from
                        ? AppStrings.sourceCurrency
                        : AppStrings.targetCurrency,
                    style: AppTypography.roundoSemiBold.copyWith(
                      fontSize: 16.sp,
                      color: AppColors.textBlack,
                    ),
                  ),
                ),
                Divider(height: 1, color: AppColors.dividerGrey),
                Expanded(
                  child: ListView.separated(
                    controller: scrollController,
                    padding: EdgeInsets.all(8.dp),
                    itemCount: currencies.length,
                    separatorBuilder: (_, _) =>
                        Divider(height: 1, color: AppColors.dividerGrey),
                    itemBuilder: (context, index) {
                      final currency = currencies[index];
                      final isSelected = currency.code == selectedCurrency;
                      return ListTile(
                        selected: isSelected,
                        selectedTileColor:
                            AppColors.primaryColor.withValues(alpha: 0.1),
                        title: Text(
                          '${currency.code} - ${currency.name}',
                          style: AppTypography.roundoRegular.copyWith(
                            fontSize: 14.sp,
                            color: AppColors.textBlack,
                          ),
                        ),
                        trailing: isSelected
                            ? Icon(Icons.check,
                                color: AppColors.primaryColor, size: 20.dp)
                            : null,
                        onTap: () {
                          onSelected(currency.code);
                          Navigator.pop(ctx);
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
