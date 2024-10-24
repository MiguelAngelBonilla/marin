import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendario extends StatefulWidget {
  const Calendario({super.key});

  @override
  _CalendarioState createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  DateTime _focusedDay = DateTime.now(); // Día actualmente seleccionado
  DateTime? _selectedDay; // Día seleccionado por el usuario

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TableCalendar(
          firstDay: DateTime.utc(2010, 10, 16), // Primer día que puede mostrarse
          lastDay: DateTime.utc(2030, 3, 14), // Último día que puede mostrarse
          focusedDay: _focusedDay, // Día actualmente enfocado
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day); // Determina si el día está seleccionado
          },
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay; // Cambia el día enfocado al seleccionado
            });
          },
          calendarStyle: CalendarStyle(
            selectedDecoration: BoxDecoration(
              color: const Color.fromARGB(255, 115, 106, 25), // Color del día seleccionado
              shape: BoxShape.circle,
            ),
            todayDecoration: BoxDecoration(
              color: Colors.blue, // Color del día actual
              shape: BoxShape.circle,
            ),
            defaultTextStyle: const TextStyle(color: Colors.black), // Texto predeterminado en negro
            weekendTextStyle: const TextStyle(color: Colors.red), // Texto de los fines de semana en rojo
          ),
          headerStyle: HeaderStyle(
            titleTextStyle: const TextStyle(color: Colors.black), // Estilo del título del calendario
            formatButtonTextStyle: const TextStyle(color: Colors.yellow), // Texto del botón de formato
            formatButtonDecoration: BoxDecoration(
              color: Colors.black54, // Fondo del botón de formato
              borderRadius: BorderRadius.circular(8.0),
            ),
            leftChevronIcon: const Icon(Icons.chevron_left, color: Colors.black), // Icono izquierdo
            rightChevronIcon: const Icon(Icons.chevron_right, color: Colors.black), // Icono derecho
          ),
          calendarFormat: CalendarFormat.month, // Muestra un mes a la vez
        ),
      ),
    );
  }
}
