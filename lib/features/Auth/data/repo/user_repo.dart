import 'package:dartz/dartz.dart';
import '../Model/user_model.dart';

class UserRepo {
  UserModel? user;

  Future<Either<String, void>> register(UserModel user) async {
    try {
      this.user = user;
      Future.delayed(const Duration(seconds: 2));
      return const Right(null);
    } catch (e) {
      return Left(e.toString());
    }
  }

   Future<Either<String, UserModel>> login ( 
      { String? name,  String? password}) async{
    try {
      if (user != null) { 
        if (user!.name == name && user!.password == password) {
         await  Future.delayed(const Duration(seconds: 2));
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
