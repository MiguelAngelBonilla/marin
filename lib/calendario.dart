import 'package:flutter/material.dart';

class Calendario extends StatelessWidget {
  const Calendario({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400.0,  // Ancho del contenedor negro
        height: 600.0, // Altura del contenedor negro
        padding: const EdgeInsets.all(16.0), // Padding externo del contenedor
        decoration: BoxDecoration(
          color: Colors.black, // Fondo negro
          borderRadius: BorderRadius.circular(12), // Bordes redondeados
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ventana De calendario',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w900,
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
