import 'package:currency_converter/src/domain/models/conversion_result.dart';
import 'package:currency_converter/src/domain/models/rate_source_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_event.freezed.dart';

@freezed
abstract class CurrencyEvent with _$CurrencyEvent {
  const factory CurrencyEvent.updateAmount(double amount) = UpdateAmount;
  const factory CurrencyEvent.updateFrom(String currency) = UpdateFrom;
  const factory CurrencyEvent.updateTo(String currency) = UpdateTo;
  const factory CurrencyEvent.swapCurrencies() = SwapCurrencies;
  const factory CurrencyEvent.convert() = ConvertCurrency;
  const factory CurrencyEvent.loadRateHistory({@Default(30) int days}) = LoadRateHistory;
  const factory CurrencyEvent.loadHistory() = LoadHistory;
  const factory CurrencyEvent.saveConversion(ConversionResult result) = SaveConversion;
  const factory CurrencyEvent.updateRateSource(RateSourceType source) = UpdateRateSource;
}
