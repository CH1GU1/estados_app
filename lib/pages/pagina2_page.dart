import 'package:estados_app/controllers/usuario_controller.dart';
import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioCtrl = Get.find<UsuarioController>();

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
              usuarioCtrl.cargarUsuario(Usuario(nombre: 'Kevin', edad: 21));
              Get.snackbar('Carga de usuario', 'Cargando usuario...',
                  backgroundColor: Colors.white38,
                  boxShadows: [
                    const BoxShadow(color: Colors.black38, blurRadius: 10)
                  ],
                  duration: const Duration(milliseconds: 2000),
                  animationDuration: const Duration(milliseconds: 500));
            },
            child: const Text(
              'Establecer Usuario',
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {
              usuarioCtrl.cambiarEdad(30);
            },
            child: const Text(
              'Cambiar Edad',
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {
              usuarioCtrl.agregarProfesion('Cybersecurity Engineer');
            },
            child: const Text(
              'Añadir Profesión',
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {
              Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
            },
            child: const Text(
              'Cambiar tema',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      )),
    );
  }
}
