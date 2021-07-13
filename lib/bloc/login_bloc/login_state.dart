import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable{
  @override
  List<Object?> get props => [];
}


class LoginStateInit extends LoginState{}

class LoginStateLoading extends LoginState{}

class LoginStateSuccess extends LoginState{}

class LoginStateFailed extends LoginState{
  final String? error;
  LoginStateFailed({this.error});

  @override
  List<Object?> get props => [error];

}