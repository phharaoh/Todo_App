abstract class LoginState {}

class LoginInitState extends LoginState {}

class LoginLoadState extends LoginState {}

class LoginSuccesState extends LoginState {}
class LoginChangePassState extends LoginState{}

class LoginErrorState extends LoginState {
  final String error;

  LoginErrorState(String s, {required this.error});
}
