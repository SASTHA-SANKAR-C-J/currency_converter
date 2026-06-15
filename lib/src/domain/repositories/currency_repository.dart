import 'package:currency_converter/src/domain/models/conversion_result.dart';
import 'package:currency_converter/src/domain/models/rate_history_point.dart';
import 'package:currency_converter/src/domain/models/rate_source_type.dart';

abstract class CurrencyRepository {
  RateSourceType get currentSource;
  set currentSource(RateSourceType type);
  Future<Map<String, double>> getLatestRates(String baseCurrency);
  Future<ConversionResult> convert(
      double amount, String from, String to);
  Future<List<RateHistoryPoint>> getRateHistory(
      String from, String to, {int days = 30});
  Future<void> saveConversion(ConversionResult result);
  List<ConversionResult> getConversionHistory();
  Future<void> cacheRates(Map<String, double> rates, String base);
  Map<String, double>? getCachedRates(String base);
  DateTime? getCachedTimestamp(String base);
}
