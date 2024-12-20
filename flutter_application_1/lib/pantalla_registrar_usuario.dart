import 'package:flutter/material.dart';

class PantallaRegistrarUsuario extends StatefulWidget {
  // Constructor con parámetro key
  const PantallaRegistrarUsuario({Key? key}) : super(key: key);

  @override
  _PantallaRegistrarUsuarioState createState() =>
      _PantallaRegistrarUsuarioState();
}

class _PantallaRegistrarUsuarioState extends State<PantallaRegistrarUsuario> {
  final TextEditingController controladorNombre = TextEditingController();
  final TextEditingController controladorApellido = TextEditingController();
  final TextEditingController controladorFicha = TextEditingController();

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
                controller: controladorNombre,
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: controladorApellido,
                decoration: const InputDecoration(
                  labelText: 'Apellido',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: controladorFicha,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Número de Ficha',
                  border: OutlineInputBorder(),
                ),
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
                decoration: const InputDecoration(
                  labelText: 'Programa',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Acción para registrar el usuario
                  print('Nombre: ${controladorNombre.text}');
                  print('Apellido: ${controladorApellido.text}');
                  print('Ficha: ${controladorFicha.text}');
                  print('Programa: $programaSeleccionado');
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
