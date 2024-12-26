import 'package:flutter/material.dart';
import 'app_styles.dart';

class PantallaRegistrarUsuario extends StatefulWidget {
  const PantallaRegistrarUsuario({super.key});

  @override
  State<PantallaRegistrarUsuario> createState() =>
      _PantallaRegistrarUsuarioState();
}

class _PantallaRegistrarUsuarioState extends State<PantallaRegistrarUsuario> {
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController apellidoController = TextEditingController();
  final TextEditingController fichaController = TextEditingController();

  String? programaSeleccionado;
  final List<String> programas = ['CTPI', 'Agro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Usuario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: nombreController,
                decoration: AppStyles.inputDecoration('Nombre'),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: apellidoController,
                decoration: AppStyles.inputDecoration('Apellido'),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: fichaController,
                keyboardType: TextInputType.number,
                decoration: AppStyles.inputDecoration('Número de Ficha'),
              ),
              const SizedBox(height: 15),
              DropdownButtonFormField<String>(
                value: programaSeleccionado,
                items: programas.map((String programa) {
                  return DropdownMenuItem<String>(
                    value: programa,
                    child: Text(programa),
                  );
                }).toList(),
                onChanged: (String? nuevoValor) {
                  setState(() {
                    programaSeleccionado = nuevoValor;
                  });
                },
                decoration: AppStyles.inputDecoration('Programa'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (nombreController.text.isEmpty ||
                      apellidoController.text.isEmpty ||
                      fichaController.text.isEmpty ||
                      programaSeleccionado == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Por favor completa los campos')),
                    );
                  } else {
                    debugPrint('Nombre: ${nombreController.text}');
                    debugPrint('Apellido: ${apellidoController.text}');
                    debugPrint('Ficha: ${fichaController.text}');
                    debugPrint('Programa: $programaSeleccionado');
                  }
                },
                child: const Text('Registrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
