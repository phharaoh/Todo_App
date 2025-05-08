import 'login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(InitLoginState());
  static LoginCubit get(context) => BlocProvider.of(context);

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController loginNameController = TextEditingController();
  TextEditingController loginPassController = TextEditingController();

  bool showPass = false;
  void changePassVisible() {
    showPass = !showPass;
    emit(ChangePassLoginState());
  }

  void onLoginPressed() {
    formKey.currentState!.validate();
    emit(LoadLoginState());
  }
}
