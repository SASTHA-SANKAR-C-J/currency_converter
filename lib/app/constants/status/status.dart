import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';

@freezed
abstract class Status<T> with _$Status<T> {
  const factory Status.initial() = StatusInitial;
  const factory Status.loading() = StatusLoading;
  const factory Status.success({T? data}) = StatusSuccess;
  const factory Status.failure(String errorMessage) = StatusFailure;
}
