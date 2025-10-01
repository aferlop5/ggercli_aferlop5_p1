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

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Pantalla Principal'),
      backgroundColor: Colors.teal,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ListViewScreen()),
            ),
            child: Container(
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
          ),
          const SizedBox(height: 60),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 0, 65, 150),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ListViewScreen()),
            ),
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
