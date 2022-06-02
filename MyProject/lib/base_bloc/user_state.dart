import 'package:equatable/equatable.dart';
import 'package:myproject/models/beans/UsersBeans/user_bean.dart';

abstract class UserState extends Equatable{
  const UserState();
  @override
  List<Object?> get props => [];
}

class UserLoading extends UserState{}

class UserInitial extends UserState{}

class UserLoaded extends UserState {
  final UserBean userBean;
  const UserLoaded(this.userBean);
}

class UserError extends UserState {
  final String? message;
  const UserError(this.message);
}