abstract class RegisterState {}

class RegisterInitState extends RegisterState {}

class RegisterLoadState extends RegisterState {}

class RegisterSuccesState extends RegisterState {}

class RegisterChangePassState extends RegisterState {}

class RegisterErrorState extends RegisterState {
  final String error;

  RegisterErrorState(String s, {required this.error});
}
