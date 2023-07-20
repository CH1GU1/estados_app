import 'package:estados_app/bloc/usuario/usuario_cubit.dart';
import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioCubit = context.read<UsuarioCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            color: Colors.blue,
            onPressed: () {

              final newUser = Usuario(
                nombre: 'Kevin Mera',
                edad: 21,
                profesiones: [
                  'Flutter Developer', 
                  'Security Engineer'
                ]
              );
              usuarioCubit.seleccionarUsuario(newUser);

            },
            child: const Text(
              'Establecer Usuario',
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {},
            child: const Text(
              'Cambiar Edad',
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {},
            child: const Text(
              'Añadir Profesión',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      )),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.accessibility_new),
      //   onPressed: () => Navigator.pushNamed(context, 'pagina1'),
      // ),
    );
  }
}
