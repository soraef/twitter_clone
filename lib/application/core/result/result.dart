import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitter_clone/application/core/exception/app_exception.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const Result._();
  const factory Result.success(T value) = Success;
  const factory Result.failure(AppException exception) = Failure;

  AppException? get exception => map(
        success: (_) => null,
        failure: (failure) => failure.exception,
      );
}
