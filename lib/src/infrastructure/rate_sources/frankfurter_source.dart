import 'dart:convert';
import 'package:currency_converter/src/domain/models/rate_history_point.dart';
import 'package:currency_converter/src/infrastructure/rate_sources/rate_source.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class FrankfurterSource implements RateSource {
  final _baseUrl = 'https://api.frankfurter.app';

  @override
  Future<Map<String, double>> fetchRates(String baseCurrency) async {
    final url = Uri.parse('$_baseUrl/latest?from=$baseCurrency');
    final response = await http.get(url).timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      return (data['rates'] as Map<String, dynamic>)
          .map((key, value) => MapEntry(key, (value as num).toDouble()));
    }
    throw Exception('Frankfurter API error: ${response.statusCode}');
  }

  @override
  Future<double> fetchConversionRate(String from, String to) async {
    final url = Uri.parse('$_baseUrl/latest?from=$from&to=$to');
    final response = await http.get(url).timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      return (data['rates'][to] as num).toDouble();
    }
    throw Exception('Frankfurter API error: ${response.statusCode}');
  }

  @override
  Future<List<RateHistoryPoint>> fetchRateHistory(
      String from, String to,
      {int days = 30}) async {
    final now = DateTime.now();
    final start = now.subtract(Duration(days: days));
    final dateFormat = DateFormat('yyyy-MM-dd');
    final startStr = dateFormat.format(start);
    final endStr = dateFormat.format(now);

    final url = Uri.parse('$_baseUrl/$startStr..$endStr?from=$from&to=$to');
    final response = await http.get(url).timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as Map<String, dynamic>;
      final rates = data['rates'] as Map<String, dynamic>;
      return rates.entries.map((entry) {
        return RateHistoryPoint(
          date: DateTime.parse(entry.key),
          rate: (entry.value as Map)[to] is int
              ? ((entry.value as Map)[to] as int).toDouble()
              : (entry.value as Map)[to] as double,
        );
      }).toList()
        ..sort((a, b) => a.date.compareTo(b.date));
    }
    throw Exception('Frankfurter API error: ${response.statusCode}');
  }
}
