import 'package:estados_app/models/usuario.dart';
import 'package:estados_app/services/usuario_service.dart';
import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: usuarioService.usuarioStream,
          builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot) {
            return snapshot.hasData
                ? Text(snapshot.data!.nombre!)
                : const Text('No Usuario');
          },
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            child: Text(
              'Establecer Usuario',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            onPressed: () {
              final newUser = Usuario(nombre: 'Kevin', edad: 21);
              usuarioService.cargarUsuario(newUser);
            },
          ),
          MaterialButton(
            child: Text(
              'Cambiar Edad',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            onPressed: () {
              usuarioService.cambiarEdad(30);
            },
          ),
          MaterialButton(
            child: Text(
              'Añadir Profesión',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            onPressed: () {},
          ),
        ],
      )),
    );
  }
}
