// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversion_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConversionResult _$ConversionResultFromJson(Map<String, dynamic> json) =>
    _ConversionResult(
      amount: (json['amount'] as num).toDouble(),
      convertedAmount: (json['convertedAmount'] as num).toDouble(),
      rate: (json['rate'] as num).toDouble(),
      fromCurrency: json['fromCurrency'] as String,
      toCurrency: json['toCurrency'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$ConversionResultToJson(_ConversionResult instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'convertedAmount': instance.convertedAmount,
      'rate': instance.rate,
      'fromCurrency': instance.fromCurrency,
      'toCurrency': instance.toCurrency,
      'timestamp': instance.timestamp.toIso8601String(),
    };
