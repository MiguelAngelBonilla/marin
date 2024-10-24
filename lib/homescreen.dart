import 'package:flutter/material.dart';
import 'package:proyecto_gestion/alta_proyectos.dart';
import 'package:proyecto_gestion/calendario.dart';
import 'package:proyecto_gestion/configuracion.dart';
import 'package:proyecto_gestion/inicio.dart';
import 'package:proyecto_gestion/recursos.dart';
import 'package:proyecto_gestion/tareas.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0; // Estado para controlar la vista seleccionada

  // Función para cambiar la vista
  void changeView(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  // Lista de widgets que representan las diferentes vistas
  final List<Widget> views = [
    const Inicio(),
    const AltaProyectos(), 
    const Calendario(),
    const Recursos(),
    const Configuracion(),
    const Tareas(),
    // Ventana de Proyectos
    /*Center(child: Text('Calendario', style: TextStyle(fontSize: 24))),
    Center(child: Text('Recursos', style: TextStyle(fontSize: 24))),
    Center(child: Text('Configuración', style: TextStyle(fontSize: 24))),
    Center(child: Text('Tareas', style: TextStyle(fontSize: 24))),
    */
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF0B3D91), // Azul metálico oscuro
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Contenedor amarillo dentro del AppBar
            Container(
              width: 90,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.yellow, // Fondo amarillo
                shape: BoxShape.circle, // Circular
                border: Border.all(width: 1, color: Colors.white),
              ),
            ),
            // Botones dentro del AppBar que cambian la vista
            
            CustomButton(
              label: 'Inicio', 
              onPressed: () => changeView(0),
            ),CustomButton(
              label: 'Proyectos', 
              onPressed: () => changeView( 1),
            ),
            CustomButton(
              label: 'Calendario', 
              onPressed: () => changeView(2),
            ),
            CustomButton(
              label: 'Recursos', 
              onPressed: () => changeView(3),
            ),
            CustomButton(
              label: 'Configuración', 
              onPressed: () => changeView(4),
            ),
            CustomButton(
              label: 'Tareas', 
              onPressed: () => changeView(5),
            ),
          ],
        ),
      ),
      // Mostrar la vista seleccionada en el Container
      body: Center(
        child: Container(
          width: 1098,
          height: 627,
          decoration: const BoxDecoration(color: Colors.white),
          child: views[selectedIndex], // Vista que se va a mostrar
        ),
      ),
    );
  }
}

class CustomButton extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.label, required this.onPressed});

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  Color buttonColor = Colors.transparent; // Color inicial

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          buttonColor = Colors.yellow; // Cambiar color al pasar el cursor
        });
      },
      onExit: (_) {
        setState(() {
          buttonColor = Colors.transparent; // Volver al color original
        });
      },
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: buttonColor, // Color del texto
        ),
        onPressed: () {
          widget.onPressed(); // Ejecutar acción al presionar
          setState(() {
            buttonColor = Colors.yellow; // Cambiar a amarillo al presionar
          });
        },
        child: Text(widget.label)
      ),
    );
  }
}
