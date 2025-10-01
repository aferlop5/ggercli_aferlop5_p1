// Importa el framework de Flutter y los widgets de Material Design.
import 'package:flutter/material.dart';

/// Segunda pantalla que muestra un mensaje y permite regresar a la pantalla anterior.
/// ListViewScreen muestra un mensaje y permite regresar a la pantalla anterior.
class ListViewScreen extends StatelessWidget {
  /// Crea una instancia de ListViewScreen.
  /// Constructor de ListViewScreen. Key permite identificar el widget de manera única.
  const ListViewScreen({Key? key}) : super(key: key);

  @override // Indica que redefine el método build de la clase padre.
  /// Método build: construye la interfaz de usuario de este widget.
  Widget build(BuildContext context) {
    // Scaffold: estructura básica con AppBar y cuerpo.
    return Scaffold(
      // AppBar: barra superior con título y estilo.
      appBar: AppBar(
        // Título que aparece en la AppBar.
        title: const Text('Segunda Pantalla'),
        backgroundColor: Colors.teal,
      ),
      // Body: columna vertical que contiene el contenido principal.
      body: Column(
        children: [
          // Expanded: ocupa el espacio restante para centrar el mensaje.
          Expanded(
            // Center centra su hijo dentro del espacio que ocupa.
            child: Center(
              // Container estilizado para el mensaje.
              child: Container(
                // Padding interior: 16px en todos los lados.
                padding: const EdgeInsets.all(16),
                // Margin exterior: 16px para separar del borde.
                margin: const EdgeInsets.all(16),
                // Decoración: color de fondo y esquinas redondeadas.
                decoration: BoxDecoration(
                  color: Colors.teal[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                // Texto con estilo y alineación centrada.
                child: const Text(
                  '¡Has navegado a la segunda pantalla!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          // Botón para regresar a la pantalla anterior, alineado abajo a la izquierda
          // Padding para posicionar el botón en la parte inferior.
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            // Row organiza los elementos horizontalmente.
            child: Row(
              children: [
                // ElevatedButton: botón con elevación para navegar atrás.
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 24,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  // onPressed: acción al pulsar el botón.
                  onPressed: () {
                    // Navigator.pop cierra esta pantalla y regresa a la anterior.
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Volver',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
