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
      body: ListView(
        scrollDirection: Axis.vertical,
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
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/apiRestHttp");
              },
              child: Text('Consumiendo una Api con Http'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/bottomNavigationBar");
              },
              child: Text('Bottom Navigation Bar '),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/animatedContainer");
              },
              child: Text('Animated Container'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/carrousel");
              },
              child: Text('Carrousel de Imagenes'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/persistenciaDatos");
              },
              child: Text('Persistencia de Datos'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/mandarInformacionPage");
              },
              child: Text('Mandar Informacion a otra Pagina'),
            ),
          ),
        ],
      ),
    );
  }
}
