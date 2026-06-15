import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversion_result.freezed.dart';
part 'conversion_result.g.dart';

@freezed
abstract class ConversionResult with _$ConversionResult {
  const factory ConversionResult({
    required double amount,
    required double convertedAmount,
    required double rate,
    required String fromCurrency,
    required String toCurrency,
    required DateTime timestamp,
  }) = _ConversionResult;

  factory ConversionResult.fromJson(Map<String, dynamic> json) =>
      _$ConversionResultFromJson(json);
}
