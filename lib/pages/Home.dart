import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aprendiendo Flutter desde Cero'),
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'Lista de Widgets',
              style: TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/ImageNetwork");
              },
              child: Text('Image Network'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/IniciarSesion");
              },
              child: Text('Iniciar Sesion'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/IniciasSeccionSeparados");
              },
              child: Text('Iniciar Sesion con Widgets Separados'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Navegacion");
              },
              child: Text('Navegacion y Rutas'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/alertDialog");
              },
              child: Text('Alert Dialog'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/clases");
              },
              child: Text('Crear una Clase'),
            ),
          ),

           Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/apiRest");
              },
              child: Text('Consumiendo una Api'),
            ),
          ),
        ],
      ),
    );
  }
}
