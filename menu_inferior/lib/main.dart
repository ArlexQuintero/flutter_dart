import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu Inferior',
      home: MenuInferior(),
    );
  }
}

class MenuInferior extends StatefulWidget {
  const MenuInferior({super.key});

  @override
  State<MenuInferior> createState() => _MenuInferiorState();
}

class _MenuInferiorState extends State<MenuInferior> {
  int indeceSeleccionado = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" al subir lamed")
      ),
      body: Center(
        child: Text("Bienvenido al inicio")
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: indeceSeleccionado,

        
        items:[
          
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.badge_outlined),label: 'Hoja de vida'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'configuracion '),
          BottomNavigationBarItem(icon: Icon(Icons.list),label: 'lista de tareas '),
          
      ] ),
    );
  }
}
