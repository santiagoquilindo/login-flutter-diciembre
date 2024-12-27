// import 'package:flutter/material.dart';
// import 'app_styles.dart';

// class PantallaRegistrarUsuario extends StatefulWidget {
//   const PantallaRegistrarUsuario({super.key});

//   @override
//   State<PantallaRegistrarUsuario> createState() =>
//       _PantallaRegistrarUsuarioState();
// }

// class _PantallaRegistrarUsuarioState extends State<PantallaRegistrarUsuario> {
//   final TextEditingController nombreController = TextEditingController();
//   final TextEditingController apellidoController = TextEditingController();
//   final TextEditingController fichaController = TextEditingController();

//   String? programaSeleccionado;
//   final List<String> programas = ['CTPI', 'Agro'];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Registrar Usuario'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               TextField(
//                 controller: nombreController,
//                 decoration: AppStyles.inputDecoration('Nombre'),
//               ),
//               const SizedBox(height: 15),
//               TextField(
//                 controller: apellidoController,
//                 decoration: AppStyles.inputDecoration('Apellido'),
//               ),
//               const SizedBox(height: 15),
//               TextField(
//                 controller: fichaController,
//                 keyboardType: TextInputType.number,
//                 decoration: AppStyles.inputDecoration('Número de Ficha'),
//               ),
//               const SizedBox(height: 15),
//               DropdownButtonFormField<String>(
//                 value: programaSeleccionado,
//                 items: programas.map((String programa) {
//                   return DropdownMenuItem<String>(
//                     value: programa,
//                     child: Text(programa),
//                   );
//                 }).toList(),
//                 onChanged: (String? nuevoValor) {
//                   setState(() {
//                     programaSeleccionado = nuevoValor;
//                   });
//                 },
//                 decoration: AppStyles.inputDecoration('Programa'),
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   if (nombreController.text.isEmpty ||
//                       apellidoController.text.isEmpty ||
//                       fichaController.text.isEmpty ||
//                       programaSeleccionado == null) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       const SnackBar(content: Text('Por favor completa los campos')),
//                     );
//                   } else {
//                     debugPrint('Nombre: ${nombreController.text}');
//                     debugPrint('Apellido: ${apellidoController.text}');
//                     debugPrint('Ficha: ${fichaController.text}');
//                     debugPrint('Programa: $programaSeleccionado');
//                   }
//                 },
//                 child: const Text('Registrar'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class PantallaRegistrarUsuario extends StatefulWidget {
  const PantallaRegistrarUsuario({super.key});

  @override
  State<PantallaRegistrarUsuario> createState() => _PantallaRegistrarUsuarioState();
}

class _PantallaRegistrarUsuarioState extends State<PantallaRegistrarUsuario> {
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController apellidoController = TextEditingController();
  final TextEditingController fichaController = TextEditingController();
  String? generoSeleccionado;
  String? areaSeleccionada;

  final List<String> generos = ['Hombre', 'Mujer'];
  final List<String> areas = ['CTPI', 'Agro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registrar Usuario'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: nombreController,
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: apellidoController,
                decoration: const InputDecoration(
                  labelText: 'Apellido',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: fichaController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Número de Ficha',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              DropdownButtonFormField<String>(
                value: generoSeleccionado,
                items: generos.map((String genero) {
                  return DropdownMenuItem<String>(
                    value: genero,
                    child: Text(genero),
                  );
                }).toList(),
                onChanged: (String? nuevoValor) {
                  setState(() {
                    generoSeleccionado = nuevoValor;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Género',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              DropdownButtonFormField<String>(
                value: areaSeleccionada,
                items: areas.map((String area) {
                  return DropdownMenuItem<String>(
                    value: area,
                    child: Text(area),
                  );
                }).toList(),
                onChanged: (String? nuevoValor) {
                  setState(() {
                    areaSeleccionada = nuevoValor;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Área',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (nombreController.text.isEmpty ||
                      apellidoController.text.isEmpty ||
                      fichaController.text.isEmpty ||
                      generoSeleccionado == null ||
                      areaSeleccionada == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Por favor complete todos los campos')),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Usuario registrado con éxito')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('Registrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
