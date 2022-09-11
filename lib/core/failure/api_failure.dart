import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failure.freezed.dart';

@freezed
abstract class ApiFailure with _$ApiFailure {
  const factory ApiFailure.dioFailure() = _DioFailure;
  const factory ApiFailure.unknownFailure() = _UnknownFailure;
  const factory ApiFailure.nullResponseFailure() = _NullResposeFailure;
}
