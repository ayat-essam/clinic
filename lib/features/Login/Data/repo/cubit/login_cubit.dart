
import 'package:bloc/bloc.dart';

import '../../models/login_request_body.dart';
import '../login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) :super(const LoginState.initial() ) ;

  Future emitLoginCubit (LoginRequestBody loginReq) async{
    emit(LoginState.success(loginReq));
    final response = await _loginRepo.login(loginReq);
    response.when(
        success: (LoginResponse){
          emit(LoginState.success(loginReq));
        },
        failure: (error){
          emit(LoginState.failure(error.apiErrorModel.message ?? ''));
        }
    );
  }


}