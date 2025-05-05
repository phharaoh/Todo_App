abstract class LoginState {}

class InitLoginState extends LoginState {}

class LoadLoginState extends LoginState {}

class ChangePassLoginState extends LoginState {}

class SuccedLoginState extends LoginState {}

class ErrorLoginState extends LoginState {
  final String error;
  ErrorLoginState(
    String s, {
    required this.error,
  });
}
