import 'login_state.dart';
import '../data/repo/user_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:register_task/features/Auth/data/Model/user_model.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(InitLoginState());
  static LoginCubit get(context) => BlocProvider.of(context);

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController loginNameController = TextEditingController();
  TextEditingController loginPassController = TextEditingController();
  String? _error;

  bool showPass = false;
  void changePassVisible() {
    showPass = !showPass;
    emit(ChangePassLoginState());
  }

  UserRepo userRepo = UserRepo();

  void onLoginPressed() {
    emit(LoadLoginState());
    userRepo.register(UserModel(
        name: loginNameController.text,
        password: loginPassController.hashCode));

    if (!formKey.currentState!.validate()) {
      _error = 'Complete the form and fix errors';
    }
    if (_error == null) {
      emit(SuccedLoginState());
    } else {
      emit(
        ErrorLoginState(_error!, error: '$_error'),
      );
    }
    // ignore: avoid_print
    print(_error);
  }
}
