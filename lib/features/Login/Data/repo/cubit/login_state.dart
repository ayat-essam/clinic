import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';


@Freezed()
class LoginState <T> with _$LoginState<T>{
  const  factory LoginState.initial() = _initial;
  const factory LoginState.success(T data) = Success<T>;
  const factory LoginState.failure(String error) = Failure;
}