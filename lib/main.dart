import 'package:aprendiendo_flutter/pages/Home.dart';
import 'package:aprendiendo_flutter/widgest/alert_dialog.dart';
import 'package:aprendiendo_flutter/widgest/animatedContainer.dart';
import 'package:aprendiendo_flutter/widgest/api_rest.dart';
import 'package:aprendiendo_flutter/widgest/bottomNavigationBar.dart';
import 'package:aprendiendo_flutter/widgest/clases.dart';
import 'package:aprendiendo_flutter/widgest/http121.dart';
import 'package:aprendiendo_flutter/widgest/image_network.dart';
import 'package:aprendiendo_flutter/widgest/inicio_sesion.dart';
import 'package:aprendiendo_flutter/widgest/inicio_sesion_separados.dart';
import 'package:aprendiendo_flutter/widgest/navegacion.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  //RUTAS DISPONIBLES EN LA APP
  final _routes = {
    '/': (context) => Home(),
    '/ImageNetwork': (context) => ImageNetwork(),
    '/IniciarSesion': (context) => IniciarSesion(),
    '/IniciasSeccionSeparados': (context) => iniciarSesionSeparados(),
    '/Navegacion': (context) => navegacionRutas(),
    '/alertDialog': (context) => alertDialog(),
    '/clases': (context) => Clases(),
    '/apiRest': (context) => ApiRest(),
    '/apiRestHttp': (context) => ApiRestII(),
    '/bottomNavigationBar': (context) => BottonNavigationBar(),
    '/animatedContainer': (context) => AnimatedContainerPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aprendiendo Fluter',
      initialRoute: '/',
      // aquí se asigna el objeto a la propiedad de routes
      routes: _routes,
      onGenerateRoute: (settings) {
        // esta opción se ejecuta cuando se llama una ruta que no existe
        return MaterialPageRoute(
          builder: (context) => Home(),
        );
      },
    );
  }
}
