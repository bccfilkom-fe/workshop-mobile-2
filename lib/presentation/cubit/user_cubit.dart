import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserState());

  void setUserData({
    required String name,
    required String email,
    required String password,
  }) {
    emit(state.copyWith(
      name: name,
      email: email,
      password: password,
    ));
  }
}
