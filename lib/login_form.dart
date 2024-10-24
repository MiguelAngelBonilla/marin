import 'package:flutter/material.dart';
import 'package:proyecto_gestion/homescreen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          
          // El rectángulo en la esquina inferior izquierda
          Positioned(
            bottom: 0,
            right: 10,
            
            child: 
            Container(
              width: 50.0,   // Ancho del rectángulo
              height: 500.0, // Altura del rectángulo
              color: const Color.fromARGB(255, 170, 181, 178), // Color del rectángulo
            ),
          ),
          Positioned(
            bottom: 0,
            right: 70,
            
            child: 
            Container(
              width: 50.0,   // Ancho del rectángulo
              height: 700.0, // Altura del rectángulo
              color: Colors.yellow, // Color del rectángulo
            ),
          ),
          Positioned(
            bottom: 0,
            right: 130,
            
            child: 
            Container(
              width: 50.0,   // Ancho del rectángulo
              height: 300.0, // Altura del rectángulo
              color: const Color.fromARGB(255, 0, 0, 0), // Color del rectángulo
            ),
          ),
          // El formulario de inicio de sesión
          Center(
            child: Container(
              width: 800.0,  // Ancho del contenedor negro
              height: 500.0, // Altura del contenedor negro
              padding: const EdgeInsets.all(16.0), // Padding externo del contenedor
              decoration: BoxDecoration(
                color: Colors.black, // Fondo negro
                borderRadius: BorderRadius.circular(12), // Bordes redondeados
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Inicia sesión',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: const TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.white24,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        labelStyle: const TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Colors.white24,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      obscureText: true,
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeScreen()), // Redirige a HomeScreen
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, backgroundColor: Colors.yellow, // Color del texto (blanco)
                        minimumSize: const Size(200, 50), // Tamaño mínimo del botón (ancho, alto)
                        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0), // Espaciado interno
                      ),
                      child: const Text(
                        'Iniciar sesión',
                        style: TextStyle(
                          fontSize: 24, // Tamaño de las letras
                          fontWeight: FontWeight.bold, // Estilo de letra (negrita opcional)
                        ),
                      ),
                      ),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        '¿Has olvidado tu contraseña?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
