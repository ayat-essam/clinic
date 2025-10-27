import 'package:clinic/core/networking/api_error_handle.dart';
import 'package:clinic/core/networking/api_result.dart';
import 'package:clinic/core/networking/api_services.dart';

import '../models/login_request_body.dart';
import '../models/login_response.dart';

class LoginRepo{
  final ApiServices _apiServices;
  LoginRepo(this._apiServices);

  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody) async{
    try{
      final response = await _apiServices.login(loginRequestBody);
      return ApiResult.success(response as LoginResponse) ;
    }catch (error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}