import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:testapp/api/LoginApi.dart';
import 'package:testapp/model/LoginModel.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  late List<LoginModel> loginModel;
  LoginApi loginApi = LoginApi();
  LoginBloc() : super(LoginInitial()) {
    on<FetchLogin>((event, emit) async {
      emit(LoginLoading());
      try {
        loginModel = await loginApi.getLogin(
          username: event.Username,
          password: event.Password,
          // Id: event.Id,
        );
        emit(LoginLoaded());
      } catch (e) {
        print("Error>>>>>>>>>>>>>>>>>>>>>>>>>" + e.toString());
        emit(LoginError());
      }
    });
  }
}
