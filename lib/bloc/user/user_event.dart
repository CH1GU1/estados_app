part of 'user_bloc.dart';

abstract class UserEvent {}

class ActivateUserEvent extends UserEvent {
  final Usuario user;

  ActivateUserEvent(this.user);
}

class ChangeUserAgeEvent extends UserEvent {
  final int age;

  ChangeUserAgeEvent(this.age);
}

class AddProfessionEvent extends UserEvent {

  final List<String> profesiones;

  AddProfessionEvent(this.profesiones);


}
