
import 'package:flutter/material.dart';
import 'pantalla_iniciar_sesion.dart';

void main() {
  runApp(const MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación de Sesión',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PantallaIniciarSesion(),
      debugShowCheckedModeBanner: false,
    );
  }
}
