import 'package:aprendiendo_flutter/pages/Home.dart';
import 'package:aprendiendo_flutter/widgest/image_network.dart';
import 'package:aprendiendo_flutter/widgest/inicio_sesion_separados.dart';
import 'package:flutter/material.dart';

class BottonNavigationBar extends StatefulWidget {
  const BottonNavigationBar({super.key});

  @override
  State<BottonNavigationBar> createState() => _BottonNavigationBarState();
}

class _BottonNavigationBarState extends State<BottonNavigationBar> {
  int _currentIndex = 0; // Índice inicial del elemento seleccionado

  final List<Widget> _pages = [
    // Agrega tus páginas aquí
    Home(), // Página 1
    ImageNetwork(),
    iniciarSesionSeparados()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // Cambia el color aquí
        ),
        title: const Text(
          'Bottom Navigation Bar',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Actualiza el índice al
            print('el indice seleccionado es $_currentIndex');
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
