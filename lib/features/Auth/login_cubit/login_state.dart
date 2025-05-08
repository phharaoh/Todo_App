abstract class LoginState {}

class InitLoginState extends LoginState {}

class LoadLoginState extends LoginState {}

class ChangePassLoginState extends LoginState {}

class SuccedLoginState extends LoginState {}

class ErrorLoginState extends LoginState {
  String errorMessage;
  ErrorLoginState({required this.errorMessage});
 
}
