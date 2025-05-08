import '../Model/user_model.dart';

class UserRepo {
  UserModel? user;

  // Either<String, void> register(UserModel user) {
  //   try {
  //     this.user = user;
  //     return right(null);
  //   } catch (e) {
  //     return left(e.toString());
  //   }
  // }

  // Either<String, UserModel> login(String username, int userpassword) {
  //   try {
  //     if (user != null) {
  //       if (user!.name == username && user!.password == userpassword) {
  //         return right(user!);
  //       } else {
  //         return left('');
  //       }
  //     } else {
  //       return left('User not found');
  //     }
  //   } catch (e) {
  //     return left(e.toString());
  //   }
  // }
}
