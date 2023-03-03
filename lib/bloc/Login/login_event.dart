part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}
class FetchLogin extends LoginEvent {
  final String Username;
  final String Password;

  FetchLogin({
    required this.Username,
    required this.Password,
  });
}