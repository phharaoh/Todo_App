import 'login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:register_task/features/Auth/data/repo/user_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(InitLoginState());
  static LoginCubit get(context) => BlocProvider.of(context);

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController loginNameController = TextEditingController();
  TextEditingController loginPassController = TextEditingController();
  UserRepo userRepo = UserRepo();
  bool showPass = false;
  void changePassVisible() {
    showPass = !showPass;
    emit(ChangePassLoginState());
  }

  onLogin(BuildContext context) async {
    emit(LoadLoginState());
    await Future.delayed(const Duration(seconds: 2));
    if (formKey.currentState!.validate()) {
      var response = await userRepo.login(
          name: loginNameController.text, password: loginPassController.text);
      response.fold(
        (String error) {
          emit(ErrorLoginState(errorMessage: error));
        },
        (r) {
          emit(SuccedLoginState());
        },
      );
    } else {
      emit(ErrorLoginState(errorMessage: "Please enter valid data"));
    }
  }
}
