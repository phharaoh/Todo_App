import 'auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitState());
  static RegisterCubit get(context) => BlocProvider.of(context);
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? _error;

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool showPassword = false;
  void changePasswordVisibility() {
    showPassword = !showPassword;
    emit(RegisterChangePassState());
  }

  void onRegisterPress() {
    emit(RegisterLoadState());
    if (!formKey.currentState!.validate()) {
      _error = 'Complete the form and fix errors';
    }
    if (_error == null) {
      emit(RegisterSuccesState());
    } else {
      emit(RegisterErrorState(_error!, error: '$_error'));
    }
    // ignore: avoid_print
    print(_error);
  }
}
