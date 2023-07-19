import 'package:estados_app/models/usuario.dart';
import 'package:estados_app/services/usuario_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
        title: usuarioService.existeUsuario
            ? Text('Nombre: ${usuarioService.usuario.nombre}')
            : const Text('Pagina 2'),
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
                  profesiones: ['Security Engineer', 'Flutter Developer']);
              usuarioService.usuario = newUser;
            },
            child: const Text(
              'Establecer Usuario',
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {
              final usuarioService =
                  Provider.of<UsuarioService>(context, listen: false);
              usuarioService.cambiarEdad(30);
            },
            child: const Text(
              'Cambiar Edad',
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            color: Colors.blue,
            child: const Text(
              'Añadir Profesión',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              usuarioService.agregarProfesion();
            },
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'pagina1'),
      ),
    );
  }
}
