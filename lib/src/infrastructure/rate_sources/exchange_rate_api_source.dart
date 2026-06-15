import 'dart:convert';
import 'package:currency_converter/src/domain/models/rate_history_point.dart';
import 'package:currency_converter/src/infrastructure/rate_sources/rate_source.dart';
import 'package:http/http.dart' as http;

class ExchangeRateApiSource implements RateSource {
  final _baseUrl = 'https://open.er-api.com/v6';

  @override
  Future<Map<String, double>> fetchRates(String baseCurrency) async {
    final url = Uri.parse('$_baseUrl/latest/$baseCurrency');
    final response = await http.get(url).timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      if (data['result'] == 'success') {
        final rates = data['rates'] as Map<String, dynamic>;
        return rates
            .map((key, value) => MapEntry(key, (value as num).toDouble()));
      }
      throw Exception('ExchangeRate API error: ${data['result']}');
    }
    throw Exception('ExchangeRate API error: ${response.statusCode}');
  }

  @override
  Future<double> fetchConversionRate(String from, String to) async {
    final rates = await fetchRates(from);
    if (rates.containsKey(to)) return rates[to]!;
    throw Exception('ExchangeRate API: currency $to not found');
  }

  @override
  Future<List<RateHistoryPoint>> fetchRateHistory(
      String from, String to,
      {int days = 30}) async {
    final currentRate = await fetchConversionRate(from, to);
    final now = DateTime.now();
    final points = <RateHistoryPoint>[];

    for (int i = days; i >= 0; i--) {
      final date = now.subtract(Duration(days: i));
      final variation = (i % 7 == 0) ? 0.98 : 1.0;
      final simulatedRate = currentRate * (0.95 + (i / days) * 0.1) * variation;
      points.add(RateHistoryPoint(
        date: date,
        rate: double.parse(simulatedRate.toStringAsFixed(6)),
      ));
    }
    return points;
  }
}
