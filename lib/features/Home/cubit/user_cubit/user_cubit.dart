import 'user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitState());
  static UserCubit get(contxt) => BlocProvider.of(contxt);
}
