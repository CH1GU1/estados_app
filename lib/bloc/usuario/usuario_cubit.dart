import 'package:estados_app/models/usuario.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'usuario_state.dart';


class UsuarioCubit extends Cubit<UsuarioState>{
  UsuarioCubit() : super(UsuarioInitial());
  

  void seleccionarUsuario(Usuario user){
    emit(UsuarioActivo(user));
  }


  
}