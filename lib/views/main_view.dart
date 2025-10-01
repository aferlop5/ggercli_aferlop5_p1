// Importa el framework Flutter y los widgets de Material Design.
import 'package:flutter/material.dart';
// Importa la segunda pantalla (ListViewScreen) para navegar desde MainView.
import 'list_view.dart';

/// Pantalla principal con mensaje de bienvenida y navegación a la segunda pantalla.
// MainView muestra un mensaje de bienvenida y un botón para navegar.
class MainView extends StatelessWidget {
  /// Crea una instancia de MainView.
  // Constructor de MainView. Key permite identificar el widget.
  const MainView({Key? key}) : super(key: key);

  @override // Indica que este método redefine build de la clase padre.
  // build describe la parte de la interfaz que este widget representa.
  Widget build(BuildContext context) {
    // Estructura base de la pantalla principal
    // Scaffold crea la estructura básica con AppBar y body.
    return Scaffold(
      // AppBar es la barra superior con título y estilo.
      appBar: AppBar(
        title: const Text('Pantalla Principal'),
        backgroundColor: Colors.teal,
      ),
      // Center centra su hijo en la pantalla.
      body: Center(
        // Column organiza widgets en una columna vertical.
        child: Column(
          // Centra los hijos verticalmente.
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Mensaje de bienvenida dentro de un contenedor estilizado
            // Container estilizado que envuelve el texto de bienvenida.
            Container(
              // padding interior: 16px en todos los lados.
              padding: const EdgeInsets.all(16),
              // margin exterior: 16px en todos los lados.
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.teal[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                '¡Bienvenido a la App!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
            // SizedBox agrega espacio vertical de 60px.
            const SizedBox(height: 60),
            // Botón para navegar a la segunda pantalla
            // ElevatedButton: botón con elevación estilo Material.
            ElevatedButton(
              // styleFrom personaliza color y forma del botón.
              style: ElevatedButton.styleFrom(
                // Color de fondo del botón.
                backgroundColor: Colors.teal,
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 24,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              // onPressed se ejecuta cuando el botón es tocado.
              onPressed: () {
                // Navigator.push abre la ruta especificada.
                Navigator.push(
                  context,
                  // MaterialPageRoute define la transición a la nueva pantalla.
                  MaterialPageRoute(
                    // El builder devuelve el widget de la segunda pantalla.
                    builder: (context) => const ListViewScreen(),
                  ),
                );
              },
              child: const Text(
                'Ir a Segunda Pantalla',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
