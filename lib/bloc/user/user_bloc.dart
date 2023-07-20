import 'package:estados_app/models/usuario.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<ActivateUserEvent>((event, emit) {
      emit(UserSetState(event.user));
    });

    on<ChangeUserAgeEvent>((event, emit) {
      if (!state.existUser) return;

      emit(UserSetState(state.user!.copyWith(edad: event.age)));
    });

    on<AddProfessionEvent>((event, emit) {
      if (!state.existUser) return;

      ...state!.user.profesiones.

      emit(UserSetState(state.user!.copyWith(profesiones: event.profesiones)));
    });
  }
}
