import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import '../Model/user_model.dart';
import '../../../../core/Network/api_paths.dart';
import '../../../../core/Network/api_helper.dart';

class UserRepo {
  UserModel? user;
  ApiHelper apiHelper = ApiHelper();
  Future<Either<String, void>> register(UserModel user) async {
    try {
      await apiHelper.postRequest(
        endPoint: ApiPaths.register,
        data: {
          "username": user.name,
          "password": user.password,
        },
      );
      return const Right(null);
    } catch (e) {
      if (e is DioException) {
        if (e.response != null && e.response?.data['message'] != null) {
          return Left(e.response?.data['message']);
        }
      }

      print("Error ${e.toString()}");
      return Left(e.toString());
    }
  }

  Future<Either<String, void>> login({String? name, String? password}) async {
    try {
      if (user != null) {
        if (user!.name == name && user!.password == password) {
          await Future.delayed(const Duration(seconds: 2));
          apiHelper.postRequest(endPoint: ApiPaths.login, data: {
            "username": name,
            "password": password,
          });
          return const Right(null);
        } else {
          return const Left("Invalid credentials");
        }
      } else {
        throw Exception("User not registered");
      }
    } catch (e) {
      if (e is DioException) {
        if (e.response != null && e.response?.data['message'] != null) {
          return Left(e.response?.data['message']);
        }
      }

      return Left(e.toString());
    }
  }
}
