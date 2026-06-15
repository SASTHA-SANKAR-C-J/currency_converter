import 'package:currency_converter/app/constants/storage_constants.dart';
import 'package:currency_converter/app/services/local_storage_service.dart';
import 'package:currency_converter/src/domain/models/conversion_result.dart';
import 'package:currency_converter/src/domain/models/rate_history_point.dart';
import 'package:currency_converter/src/domain/repositories/currency_repository.dart';
import 'package:currency_converter/src/infrastructure/rate_sources/exchange_rate_api_source.dart';
import 'package:currency_converter/src/infrastructure/rate_sources/frankfurter_source.dart';
import 'package:currency_converter/src/infrastructure/rate_sources/rate_source.dart';
import 'package:currency_converter/src/domain/models/rate_source_type.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CurrencyRepository)
class CurrencyRepositoryImplementation implements CurrencyRepository {
  final LocalStorageService _storage;
  final _sources = <RateSourceType, RateSource>{};

  RateSourceType _currentSource = RateSourceType.frankfurter;

  CurrencyRepositoryImplementation(this._storage);

  RateSource get _activeSource {
    if (!_sources.containsKey(_currentSource)) {
      switch (_currentSource) {
        case RateSourceType.frankfurter:
          _sources[_currentSource] = FrankfurterSource();
        case RateSourceType.exchangeRateApi:
          _sources[_currentSource] = ExchangeRateApiSource();
      }
    }
    return _sources[_currentSource]!;
  }

  @override
  RateSourceType get currentSource => _currentSource;

  @override
  set currentSource(RateSourceType type) => _currentSource = type;

  @override
  Future<Map<String, double>> getLatestRates(String baseCurrency) async {
    try {
      final rates = await _activeSource.fetchRates(baseCurrency);
      await cacheRates(rates, baseCurrency);
      return rates;
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
      final rate = await _activeSource.fetchConversionRate(fromLower, toLower);
      return ConversionResult(
        amount: amount,
        convertedAmount: amount * rate,
        rate: rate,
        fromCurrency: fromLower,
        toCurrency: toLower,
        timestamp: DateTime.now(),
      );
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
    return _activeSource.fetchRateHistory(from, to, days: days);
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
