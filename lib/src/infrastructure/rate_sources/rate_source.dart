import 'package:currency_converter/src/domain/models/rate_history_point.dart';

abstract class RateSource {
  Future<Map<String, double>> fetchRates(String baseCurrency);
  Future<double> fetchConversionRate(String from, String to);
  Future<List<RateHistoryPoint>> fetchRateHistory(
      String from, String to, {int days = 30});
}
