import 'package:currency_converter/app/constants/status/status.dart';
import 'package:currency_converter/src/domain/models/conversion_result.dart';
import 'package:currency_converter/src/domain/models/rate_history_point.dart';
import 'package:currency_converter/src/domain/models/rate_source_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_state.freezed.dart';

@freezed
abstract class CurrencyState with _$CurrencyState {
  const factory CurrencyState({
    required String fromCurrency,
    required String toCurrency,
    required double amount,
    required ConversionResult? currentResult,
    required List<RateHistoryPoint> rateHistory,
    required List<ConversionResult> conversionHistory,
    required Status convertStatus,
    required Status historyStatus,
    required Status saveStatus,
    required RateSourceType rateSource,
  }) = _CurrencyState;

  factory CurrencyState.initial() => const CurrencyState(
        fromCurrency: 'USD',
        toCurrency: 'INR',
        amount: 1.0,
        currentResult: null,
        rateHistory: [],
        conversionHistory: [],
        convertStatus: StatusInitial(),
        historyStatus: StatusInitial(),
        saveStatus: StatusInitial(),
        rateSource: RateSourceType.frankfurter,
      );
}
