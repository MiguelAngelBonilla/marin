import 'package:flutter/material.dart';

class AltaProyectos extends StatelessWidget {
  const AltaProyectos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Nombre del proyecto',
              style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Ingrese el nombre del proyecto',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Jefe de proyecto',
              style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Ingrese el nombre del jefe de proyecto',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Descripción del proyecto',
              style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Ingrese la descripción del proyecto',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Fecha de inicio',
              style: TextStyle(
                color: Color(0xFF1E1E1E),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Ingrese la fecha de inicio',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            // Centrar el botón usando Center
            Center(
              child: ElevatedButton(
                onPressed: () {
                  print("Guardado Correctamente");
                },
                child: const Text('Guardar proyecto'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
