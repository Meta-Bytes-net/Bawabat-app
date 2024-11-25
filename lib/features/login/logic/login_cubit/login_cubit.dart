import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bwabat/core/helpers/constants.dart';
import 'package:bwabat/core/helpers/shared_pref_helper.dart';
import 'package:bwabat/features/login/data/models/login_request_body.dart';
import 'package:bwabat/features/login/data/repos/auth_repo.dart';
import 'package:bwabat/features/login/logic/login_cubit/login_state.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../core/networking/dio_factory.dart';


class LoginCubit extends Cubit<LoginState> {
  final AuthRepo _authRepo;

  LoginCubit(this._authRepo) : super(const LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loginLoadingState());
    final response = await _authRepo.login(LoginRequestBody(
      email: emailController.text,
      password: passwordController.text,
    ));
    if (kDebugMode) {
      print('response----------$response');
    }
    response.when(success: (loginResponse) async {
      await saveUserToken(loginResponse.data?.user?.token ?? '');
      debugPrint('token----${loginResponse.data?.user?.token}');
      emit(LoginState.loginSuccessState(loginResponse));
    }, failure: (error) {
      emit(LoginState.loginErrorState(error));
    });
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
