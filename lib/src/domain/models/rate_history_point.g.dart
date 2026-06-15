// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_history_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RateHistoryPoint _$RateHistoryPointFromJson(Map<String, dynamic> json) =>
    _RateHistoryPoint(
      date: DateTime.parse(json['date'] as String),
      rate: (json['rate'] as num).toDouble(),
    );

Map<String, dynamic> _$RateHistoryPointToJson(_RateHistoryPoint instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'rate': instance.rate,
    };
