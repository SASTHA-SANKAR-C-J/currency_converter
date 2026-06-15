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
import 'package:currency_converter/src/domain/models/rate_history_point.dart';
import 'package:currency_converter/src/domain/models/rate_source_type.dart';
import 'package:currency_converter/src/presentation/constants/app_strings.dart';
import 'package:currency_converter/src/presentation/views/widgets/background_texture.dart';
import 'package:currency_converter/src/presentation/views/widgets/primary_button.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

@RoutePage()
class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  int _selectedDays = 30;

  @override
  void initState() {
    super.initState();
    context.read<CurrencyBloc>().add(const LoadRateHistory(days: 30));
    context.read<CurrencyBloc>().add(const LoadHistory());
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundTexture(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () => context.router.pop(),
            icon: Icon(Icons.arrow_back, color: AppColors.textBlack, size: 24.dp),
          ),
          title: Text(
            AppStrings.rateHistory,
            style: AppTypography.roundoSemiBold.copyWith(
              fontSize: 18.sp,
              color: AppColors.textBlack,
            ),
          ),
        ),
        body: BlocBuilder<CurrencyBloc, CurrencyState>(
          builder: (context, state) {
            return Column(
              children: [
                _buildRateSourceSelector(context, state),
                _buildPeriodSelector(),
                if (state.historyStatus is StatusLoading)
                  const Expanded(
                    child: Center(child: CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    )),
                  ),
                if (state.historyStatus is StatusFailure)
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppStrings.errorApi,
                            style: AppTypography.roundoRegular.copyWith(
                              color: AppColors.textLightGrey,
                            ),
                          ),
                          Gap(8.dp),
                          PrimaryButton(
                            text: AppStrings.retry,
                            onPressed: () => context
                                .read<CurrencyBloc>()
                                .add(LoadRateHistory(days: _selectedDays)),
                            width: 120.dp,
                          ),
                        ],
                      ),
                    ),
                  ),
                if (state.historyStatus is StatusSuccess &&
                    state.rateHistory.isNotEmpty)
                  Expanded(
                    child: SfCartesianChart(
                      margin: EdgeInsets.all(16.dp),
                      primaryXAxis: DateTimeAxis(
                        dateFormat: DateFormat('dd MMM'),
                        labelStyle: AppTypography.roundoRegular.copyWith(
                          fontSize: 10.sp,
                        ),
                      ),
                      primaryYAxis: NumericAxis(
                        labelFormat: '{value}',
                        labelStyle: AppTypography.roundoRegular.copyWith(
                          fontSize: 10.sp,
                        ),
                      ),
                      series: <LineSeries<RateHistoryPoint, DateTime>>[
                        LineSeries<RateHistoryPoint, DateTime>(
                          dataSource: state.rateHistory,
                          xValueMapper: (point, _) => point.date,
                          yValueMapper: (point, _) => point.rate,
                          color: AppColors.primaryColor,
                          width: 2,
                          markerSettings: const MarkerSettings(isVisible: false),
                        ),
                      ],
                      tooltipBehavior: TooltipBehavior(enable: true),
                    ),
                  ),
                Gap(16.dp),
                if (state.conversionHistory.isNotEmpty)
                  _buildConversionHistory(context, state),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildRateSourceSelector(BuildContext context, CurrencyState state) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.dp, 0, 16.dp, 8.dp),
      child: Row(
        children: RateSourceType.values.map((source) {
          final isSelected = state.rateSource == source;
          return Expanded(
            child: GestureDetector(
              onTap: () {
                context
                    .read<CurrencyBloc>()
                    .add(UpdateRateSource(source));
                context
                    .read<CurrencyBloc>()
                    .add(LoadRateHistory(days: _selectedDays));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 4.dp),
                padding: EdgeInsets.symmetric(vertical: 8.dp),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.primaryColor
                      : AppColors.containerGrey,
                  borderRadius: BorderRadius.circular(8.dp),
                ),
                child: Text(
                  source.displayName,
                  textAlign: TextAlign.center,
                  style: AppTypography.roundoSemiBold.copyWith(
                    fontSize: 12.sp,
                    color: isSelected ? Colors.white : AppColors.textGrey,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildPeriodSelector() {
    final periods = [
      {'label': AppStrings.last30Days, 'days': 30},
      {'label': AppStrings.last90Days, 'days': 90},
      {'label': AppStrings.lastYear, 'days': 365},
    ];

    return Padding(
      padding: EdgeInsets.all(16.dp),
      child: Row(
        children: periods.map((period) {
          final days = period['days'] as int;
          final isSelected = _selectedDays == days;
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() => _selectedDays = days);
                context
                    .read<CurrencyBloc>()
                    .add(LoadRateHistory(days: days));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 4.dp),
                padding: EdgeInsets.symmetric(vertical: 8.dp),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.primaryColor
                      : AppColors.containerGrey,
                  borderRadius: BorderRadius.circular(8.dp),
                ),
                child: Text(
                  period['label'] as String,
                  textAlign: TextAlign.center,
                  style: AppTypography.roundoSemiBold.copyWith(
                    fontSize: 12.sp,
                    color: isSelected ? Colors.white : AppColors.textGrey,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildConversionHistory(BuildContext context, CurrencyState state) {
    final format = NumberFormat('#,##0.00');
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16.dp),
        itemCount: state.conversionHistory.length,
        separatorBuilder: (_, _) => SizedBox(height: 8.dp),
        itemBuilder: (context, index) {
          final item = state.conversionHistory[index];
          return Container(
            padding: EdgeInsets.all(12.dp),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.dp),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${format.format(item.amount)} ${item.fromCurrency}',
                      style: AppTypography.roundoSemiBold.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.textBlack,
                      ),
                    ),
                    Text(
                      '= ${format.format(item.convertedAmount)} ${item.toCurrency}',
                      style: AppTypography.roundoRegular.copyWith(
                        fontSize: 12.sp,
                        color: AppColors.textLightGrey,
                      ),
                    ),
                  ],
                ),
                Text(
                  DateFormat('dd MMM').format(item.timestamp),
                  style: AppTypography.roundoRegular.copyWith(
                    fontSize: 11.sp,
                    color: AppColors.textGrey,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
