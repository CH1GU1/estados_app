import 'package:estados_app/models/usuario.dart';
import 'package:estados_app/services/usuario_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 1'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              // Remover el usuario
              usuarioService.removerUsuario();
            },
          )
        ],
      ),
      body: usuarioService.existeUsuario
          ? InformacionUsuario(
              user: usuarioService.usuario,
            )
          : const Center(
              child: Text('No hay usuario seleccionado'),
            ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'pagina2'),
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario user;
  const InformacionUsuario({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ListTile(
            title: Text('Nombre: ${user.nombre}'),
          ),
          ListTile(
            title: Text('Edad: ${user.edad}'),
          ),
          const Text(
            'Profesiones',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),

          ...user.profesiones!
              .map((profesion) => ListTile(title: Text(profesion)))
              .toList()

          // const ListTile(
          //   title: Text('Profesion1: '),
          // ),
          // const ListTile(
          //   title: Text('Profesion2: '),
          // ),
          // const ListTile(
          //   title: Text('Profesion3: '),
          // ),
        ],
      ),
    );
  }
}
