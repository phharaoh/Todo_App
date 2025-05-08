class UserModel {
  String name;
  String password;
  String? confirmPassword;
  UserModel({
    required this.name,
    required this.password,
    this.confirmPassword,
  });
}
