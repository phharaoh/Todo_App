import 'package:dartz/dartz.dart';
import '../Model/user_model.dart';

class UserRepo {
  UserModel? user;

  Either<String, void> register(UserModel user) {
    try {
      this.user = user;

      return const Right(null);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Either<String, UserModel> login(
      {required String name, required String password}) {
    try {
      if (user != null) {
        if (user!.name == name && user!.password == password) {
          return Right(user!);
        } else {
          return const Left("Invalid credentials");
        }
      } else {
        throw Exception("User not registered");
      }
    } catch (e) {
      return Left(e.toString());
    }
  }
}
