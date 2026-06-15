import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:currency_converter/app/constants/status/status.dart';
import 'package:currency_converter/app/theme/app_colors.dart';
import 'package:currency_converter/app/theme/app_typography.dart';
import 'package:currency_converter/src/application/currency_bloc/currency_bloc.dart';
import 'package:currency_converter/src/application/currency_bloc/currency_event.dart';
import 'package:currency_converter/src/application/currency_bloc/currency_state.dart';
import 'package:currency_converter/src/domain/models/conversion_result.dart';
import 'package:currency_converter/src/domain/models/currency_info.dart';
import 'package:currency_converter/src/presentation/constants/app_strings.dart';
import 'package:currency_converter/src/presentation/views/converter/widgets/currency_picker.dart';
import 'package:currency_converter/src/presentation/views/widgets/background_texture.dart';
import 'package:currency_converter/src/presentation/views/widgets/common_textfield.dart';
import 'package:currency_converter/src/presentation/views/widgets/custom_loading_widget.dart';
import 'package:currency_converter/src/presentation/views/widgets/primary_button.dart';
import 'package:currency_converter/src/presentation/views/widgets/the_toast.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class ConverterScreen extends StatefulWidget {
  const ConverterScreen({super.key});

  @override
  State<ConverterScreen> createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  final _amountController = TextEditingController(text: '1.0');
  final _currencyFormat = NumberFormat('#,##0.00');

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundTexture(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            AppStrings.appName,
            style: AppTypography.roundoSemiBold.copyWith(
              fontSize: 18.sp,
              color: AppColors.textBlack,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () => context.router.pushPath('/history'),
              icon: Icon(
                Icons.history,
                color: AppColors.primaryColor,
                size: 24.dp,
              ),
            ),
          ],
        ),
        body: BlocConsumer<CurrencyBloc, CurrencyState>(
          listener: (context, state) {
            if (state.convertStatus is StatusFailure) {
              TheMessage.show(
                message: (state.convertStatus as StatusFailure).errorMessage,
                context: context,
                type: MessageType.error,
              );
            }
          },
          listenWhen: (previous, current) =>
              current.convertStatus is StatusFailure &&
              previous.convertStatus is! StatusFailure,
          builder: (context, state) {
            return SingleChildScrollView(
              padding: EdgeInsets.all(16.dp),
              child: Column(
                children: [
                  _buildConverterCard(context, state),
                  Gap(16.dp),
                  if (state.convertStatus is StatusLoading)
                    const CustomLoadingWidget(),
                  if (state.currentResult != null)
                    _buildResultCard(context, state.currentResult!),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildConverterCard(BuildContext context, CurrencyState state) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.all(16.dp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.dp),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.enterAmount,
            style: AppTypography.roundoSemiBold.copyWith(
              fontSize: 14.sp,
              color: AppColors.textGrey,
            ),
          ),
          Gap(8.dp),
          CommonTextField(
            header: '',
            controller: _amountController,
            hintText: 'Enter amount',
            textInputType: const TextInputType.numberWithOptions(decimal: true),
            onChanged: (value) {
              final amount = double.tryParse(value) ?? 0;
              context.read<CurrencyBloc>().add(UpdateAmount(amount));
            },
          ),
          Gap(16.dp),
          Row(
            children: [
              Expanded(
                child: CurrencyPicker(
                  label: AppStrings.from,
                  selectedCurrency: state.fromCurrency,
                  currencies: CurrencyInfo.commonCurrencies,
                  onSelected: (code) {
                    context.read<CurrencyBloc>().add(UpdateFrom(code));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.dp,right: 8.dp,top: 15.dp),
                child: GestureDetector(
                  onTap: () =>
                      context.read<CurrencyBloc>().add(const SwapCurrencies()),
                  child: Container(
                    padding: EdgeInsets.all(10.dp),
                    decoration: BoxDecoration(
                      color: AppColors.containerGrey,
                      borderRadius: BorderRadius.circular(8.dp),
                    ),
                    child: Icon(
                      Icons.swap_horiz,
                      color: AppColors.primaryColor,
                      size: 20.dp,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: CurrencyPicker(
                  label: AppStrings.to,
                  selectedCurrency: state.toCurrency,
                  currencies: CurrencyInfo.commonCurrencies,
                  onSelected: (code) {
                    context.read<CurrencyBloc>().add(UpdateTo(code));
                  },
                ),
              ),
            ],
          ),
          Gap(20.dp),
          PrimaryButton(
            text: AppStrings.convert,
            onPressed: () {
              final amount = double.tryParse(_amountController.text) ?? 0;
              if (amount <= 0) {
                TheMessage.show(
                  message: AppStrings.errorInvalidAmount,
                  context: context,
                  type: MessageType.error,
                );
                return;
              }
              if (state.fromCurrency == state.toCurrency) {
                TheMessage.show(
                  message: AppStrings.errorSameCurrency,
                  context: context,
                  type: MessageType.error,
                );
                return;
              }
              context.read<CurrencyBloc>().add(const ConvertCurrency());
            },
            isLoading: state.convertStatus is StatusLoading,
          ),
        ],
      ),
    );
  }

  Widget _buildResultCard(BuildContext context, ConversionResult result) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.all(16.dp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.dp),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            AppStrings.result,
            style: AppTypography.roundoSemiBold.copyWith(
              fontSize: 16.sp,
              color: AppColors.textBlack,
            ),
          ),
          Gap(16.dp),
          Text(
            '${_currencyFormat.format(result.amount)} ${result.fromCurrency}',
            style: AppTypography.roundoRegular.copyWith(
              fontSize: 16.sp,
              color: AppColors.textLightGrey,
            ),
          ),
          Gap(8.dp),
          Icon(Icons.arrow_downward, color: AppColors.primaryColor, size: 24.dp),
          Gap(8.dp),
          Text(
            '${_currencyFormat.format(result.convertedAmount)} ${result.toCurrency}',
            style: AppTypography.roundoBold.copyWith(
              fontSize: 28.sp,
              color: AppColors.primaryColor,
            ),
          ),
          Gap(16.dp),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.dp, vertical: 8.dp),
            decoration: BoxDecoration(
              color: AppColors.containerGrey,
              borderRadius: BorderRadius.circular(8.dp),
            ),
            child: Text(
              '${AppStrings.conversionRate}: 1 ${result.fromCurrency} = ${result.rate.toStringAsFixed(6)} ${result.toCurrency}',
              style: AppTypography.roundoRegular.copyWith(
                fontSize: 12.sp,
                color: AppColors.textGrey,
              ),
            ),
          ),
          Gap(16.dp),
          PrimaryButton(
            text: AppStrings.rateHistory,
            onPressed: () {
              context.read<CurrencyBloc>().add(const LoadRateHistory());
              context.router.pushPath('/history');
            },
            backgroundColor: AppColors.white,
            textColor: AppColors.primaryColor,
            borderColor: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}
