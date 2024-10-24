import 'package:flutter/material.dart';
import 'login_form.dart'; // Importa el widget del formulario

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white, // Fondo blanco
          child: const LoginForm(), // Llama al widget del formulario
        ),
      ),
    );
  }
}
