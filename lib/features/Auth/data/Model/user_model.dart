import 'package:image_picker/image_picker.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class UserModel {
  String name;
  String password;
  String? confirmPassword;
  XFile? image;

  UserModel({
    required this.name,
    required this.password,
    this.confirmPassword,
    this.image,
  });
}
