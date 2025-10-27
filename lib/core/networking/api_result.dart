
import 'package:clinic/core/networking/api_error_handle.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_result.freezed.dart';

@Freezed()
abstract class ApiResult <T>  with _$ApiResult<T>{

  const factory ApiResult.success(T data) = Sucscess<T>;
  const factory ApiResult.failure(ErrorHandler errorHand) = Failure<T>;

}