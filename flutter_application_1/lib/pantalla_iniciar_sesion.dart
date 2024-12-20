import 'package:flutter/material.dart';
import 'pantalla_registrar_usuario.dart';

class PantallaIniciarSesion extends StatelessWidget {
  // Constructor con parámetro key (sin 'const')
  PantallaIniciarSesion({Key? key}) : super(key: key);

  final TextEditingController controladorCorreo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iniciar Sesión'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controladorCorreo,
              decoration: const InputDecoration(
                labelText: 'Correo Electrónico',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción de "Olvidar correo"
                print('Función para recuperar correo.');
              },
              child: const Text('¿Olvidó su correo?'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla de registro
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PantallaRegistrarUsuario()),
                );
              },
              child: const Text('Registrar Usuario'),
            ),
          ],
        ),
      ),
    );
  }
}
