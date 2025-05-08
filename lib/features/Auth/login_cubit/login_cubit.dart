import 'login_state.dart';
import 'package:dartz/dartz.dart';
import '../data/Model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:register_task/features/Auth/data/repo/user_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(InitLoginState());
  static LoginCubit get(context) => BlocProvider.of(context);

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController loginNameController = TextEditingController();
  TextEditingController loginPassController = TextEditingController();
  UserRepo? userRepo;
  bool showPass = false;
  void changePassVisible() {
    showPass = !showPass;
    emit(ChangePassLoginState());
  }

  onLogin() {
    emit(LoadLoginState());
    Either<String, void> response = userRepo!.login(
        name: loginNameController.text,
        password: loginPassController.text
        );
    response.fold(
      (String error) {
        emit(ErrorLoginState());
      },
      (r) {
        emit(SuccedLoginState());
      },
    );
  }

  // void registerUser() {
  //   UserModel user = UserModel(
  //     name: loginNameController.text,
  //     password: int.parse(loginPassController.text),
  //   );
  //   Either<String, void> response = userRepo!.register(user);
  //   response.fold((String error) {}, (r) {});
  // }

  void onLoginPressed() {
    formKey.currentState!.validate();
    emit(LoadLoginState());
  }
}
