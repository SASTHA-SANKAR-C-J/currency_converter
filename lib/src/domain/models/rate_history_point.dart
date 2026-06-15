import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_history_point.freezed.dart';
part 'rate_history_point.g.dart';

@freezed
abstract class RateHistoryPoint with _$RateHistoryPoint {
  const factory RateHistoryPoint({
    required DateTime date,
    required double rate,
  }) = _RateHistoryPoint;

  factory RateHistoryPoint.fromJson(Map<String, dynamic> json) =>
      _$RateHistoryPointFromJson(json);
}
