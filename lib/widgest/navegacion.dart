import 'package:aprendiendo_flutter/pages/PaginaRuta01.dart';
import 'package:flutter/material.dart';

class navegacionRutas extends StatelessWidget {
  const navegacionRutas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navegacion y Rutas'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Home'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => paginaRuta01())));
            },
            child: Text('Ir a la otra pagina'),
          ),
        ],
      ),
    );
  }
}
