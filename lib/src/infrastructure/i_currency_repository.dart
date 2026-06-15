import 'dart:convert';
import 'package:currency_converter/app/constants/storage_constants.dart';
import 'package:currency_converter/app/services/local_storage_service.dart';
import 'package:currency_converter/src/domain/models/conversion_result.dart';
import 'package:currency_converter/src/domain/models/rate_history_point.dart';
import 'package:currency_converter/src/domain/repositories/currency_repository.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@LazySingleton(as: CurrencyRepository)
class CurrencyRepositoryImplementation implements CurrencyRepository {
  final LocalStorageService _storage;
  final _baseUrl = 'https://api.frankfurter.app';

  CurrencyRepositoryImplementation(this._storage);

  @override
  Future<Map<String, double>> getLatestRates(String baseCurrency) async {
    try {
      final url = Uri.parse('$_baseUrl/latest?from=$baseCurrency');
      final response = await http.get(url).timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        final rates = (data['rates'] as Map<String, dynamic>)
            .map((key, value) => MapEntry(key, (value as num).toDouble()));
        await cacheRates(rates, baseCurrency);
        return rates;
      }
      throw Exception('Failed to fetch rates: ${response.statusCode}');
    } catch (e) {
      final cached = getCachedRates(baseCurrency);
      if (cached != null) return cached;
      rethrow;
    }
  }

  @override
  Future<ConversionResult> convert(
      double amount, String from, String to) async {
    final fromLower = from.toUpperCase();
    final toLower = to.toUpperCase();

    if (fromLower == toLower) {
      return ConversionResult(
        amount: amount,
        convertedAmount: amount,
        rate: 1.0,
        fromCurrency: fromLower,
        toCurrency: toLower,
        timestamp: DateTime.now(),
      );
    }

    try {
      final url = Uri.parse('$_baseUrl/latest?from=$fromLower&to=$toLower');
      final response = await http.get(url).timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        final rate = (data['rates'][toLower] as num).toDouble();
        return ConversionResult(
          amount: amount,
          convertedAmount: amount * rate,
          rate: rate,
          fromCurrency: fromLower,
          toCurrency: toLower,
          timestamp: DateTime.now(),
        );
      }
      throw Exception('Conversion failed: ${response.statusCode}');
    } catch (e) {
      final cached = getCachedRates(fromLower);
      if (cached != null && cached.containsKey(toLower)) {
        final rate = cached[toLower]!;
        return ConversionResult(
          amount: amount,
          convertedAmount: amount * rate,
          rate: rate,
          fromCurrency: fromLower,
          toCurrency: toLower,
          timestamp: DateTime.now(),
        );
      }
      rethrow;
    }
  }

  @override
  Future<List<RateHistoryPoint>> getRateHistory(
      String from, String to,
      {int days = 30}) async {
    final now = DateTime.now();
    final start = now.subtract(Duration(days: days));
    final dateFormat = DateFormat('yyyy-MM-dd');
    final startStr = dateFormat.format(start);
    final endStr = dateFormat.format(now);

    final url = Uri.parse(
        '$_baseUrl/$startStr..$endStr?from=$from&to=$to');
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
    throw Exception('Failed to fetch history: ${response.statusCode}');
  }

  @override
  Future<void> saveConversion(ConversionResult result) async {
    final history = getConversionHistory();
    history.insert(0, result);
    final jsonList = history
        .map((r) => {
              'amount': r.amount,
              'convertedAmount': r.convertedAmount,
              'rate': r.rate,
              'fromCurrency': r.fromCurrency,
              'toCurrency': r.toCurrency,
              'timestamp': r.timestamp.toIso8601String(),
            })
        .toList();
    await _storage.setJsonList(StorageKey.conversionHistory, jsonList);
  }

  @override
  List<ConversionResult> getConversionHistory() {
    final data = _storage.getJsonList(StorageKey.conversionHistory);
    if (data == null) return [];
    return data.map((json) {
      return ConversionResult(
        amount: (json['amount'] as num).toDouble(),
        convertedAmount: (json['convertedAmount'] as num).toDouble(),
        rate: (json['rate'] as num).toDouble(),
        fromCurrency: json['fromCurrency'] as String,
        toCurrency: json['toCurrency'] as String,
        timestamp: DateTime.parse(json['timestamp'] as String),
      );
    }).toList();
  }

  @override
  Future<void> cacheRates(Map<String, double> rates, String base) async {
    await _storage.setJson('${StorageKey.cachedRates}_$base',
        rates.map((k, v) => MapEntry(k, v)));
    await _storage.setString(
        '${StorageKey.cachedRatesTimestamp}_$base', DateTime.now().toIso8601String());
  }

  @override
  Map<String, double>? getCachedRates(String base) {
    final data = _storage.getJson('${StorageKey.cachedRates}_$base');
    if (data == null) return null;
    return data.map((k, v) => MapEntry(k, (v as num).toDouble()));
  }

  @override
  DateTime? getCachedTimestamp(String base) {
    final data = _storage.getString('${StorageKey.cachedRatesTimestamp}_$base');
    if (data == null) return null;
    return DateTime.tryParse(data);
  }
}
