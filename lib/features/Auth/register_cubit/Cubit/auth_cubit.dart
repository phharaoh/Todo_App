import 'auth_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import '../../data/repo/user_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:register_task/features/Auth/data/Model/user_model.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitState());
  static RegisterCubit get(context) => BlocProvider.of(context);
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  UserRepo? userRepo;
  bool showPassword = false;
  void changePasswordVisibility() {
    showPassword = !showPassword;
    emit(RegisterChangePassState());
  }

  onRegister() {
    emit(RegisterLoadState());
    Either<String, void> response = userRepo!.register(UserModel(
      name: usernameController.text,
      password: passwordController.text,
      confirmPassword: confirmPasswordController.text,
    ));
    response.fold(
      (String error) {
        emit(RegisterErrorState());
      },
      (r) {
        emit(RegisterSuccesState());
      },
    );
  }

  // void onRegisterPress() {
  //   formKey.currentState!.validate();
  //   emit(RegisterLoadState());
  // }
}
