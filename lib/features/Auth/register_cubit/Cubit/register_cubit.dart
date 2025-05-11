import 'register_state.dart';
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
  final UserRepo userRepo = UserRepo();
  bool showPassword = false;
  void changePasswordVisibility() {
    showPassword = !showPassword;
    emit(RegisterChangePassState());
  }

  onRegister(BuildContext context) async {
    emit(RegisterLoadState());
    await Future.delayed(const Duration(seconds: 2));
    if (formKey.currentState!.validate()) {
      var response = await userRepo.register(UserModel(
        name: usernameController.text,
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
      ));

      response.fold(
        (String error) {
          emit(RegisterErrorState(errorMessage: error));
        },
        (r) {
          emit(RegisterSuccesState());
        },
      );
    }
  }
}
