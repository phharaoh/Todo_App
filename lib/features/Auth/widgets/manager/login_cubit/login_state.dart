abstract class LoginState {}

class LoginInitState extends LoginState {}

class LoginLoadState extends LoginState {}

class LoginSuccesState extends LoginState {}

class LoginErrorState extends LoginState {
  final String error;

  LoginErrorState({required this.error});
}
