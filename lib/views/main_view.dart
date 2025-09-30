import 'package:flutter/material.dart';
import 'list_view.dart';

/// Pantalla principal con mensaje de bienvenida y navegación a la segunda pantalla.
class MainView extends StatelessWidget {
  /// Crea una instancia de MainView.
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Estructura base de la pantalla principal
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Principal'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Mensaje de bienvenida dentro de un contenedor estilizado
            Container(
              padding: const EdgeInsets.all(16),
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
            const SizedBox(height: 60),
            // Botón para navegar a la segunda pantalla
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
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
