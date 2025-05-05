import 'login_state.dart';
import 'package:flutter/widgets.dart';
import '../../Home/data/models/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

  void onLoginPressed() {
    emit(LoadLoginState());
    if (!formKey.currentState!.validate()) {
      _error = 'Complete the form and fix errors';
    }
    if (_error == null) {
      UserModel userModel = UserModel(name: loginNameController.text);
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
