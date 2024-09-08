part of 'user_cubit.dart';

class UserState extends Equatable {
  final String name;
  final String email;
  final String password;

  const UserState({this.name = '', this.email = '', this.password = ''});

  UserState copyWith({String? name, String? email, String? password}) {
    return UserState(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  List<Object> get props => [name, email, password];
}
