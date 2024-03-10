import 'package:aprendiendo_flutter/widgest/pageStateFul.dart';
import 'package:aprendiendo_flutter/widgest/pageStateLess.dart';
import 'package:flutter/material.dart';

class MandarInformacionPage extends StatefulWidget {
  const MandarInformacionPage({super.key});

  @override
  State<MandarInformacionPage> createState() => _MandarInformacionPageState();
}

class _MandarInformacionPageState extends State<MandarInformacionPage> {
  @override
  Widget build(BuildContext context) {
    return HomeMandarInfo();
  }
}

class HomeMandarInfo extends StatelessWidget {
  TextEditingController username =
      TextEditingController(text: "Escribe tu nombre");

  HomeMandarInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mandar Info a otro Widget'),
        ),
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.grey[300],
                    filled: true,
                    hintText: "Ingresa tu Usuario",
                  ),
                )),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black, // Cambia el color de fondo aquí
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.blue, // Cambia el color del borde aquí
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                print(username.text);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageStateLess(username.text)));
              },
              child: Text(
                'Enviar datos a Widget StateLessWidget',
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black, // Cambia el color de fondo aquí
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.blue, // Cambia el color del borde aquí
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageStateFul(username.text)));
              },
              child: Text(
                'Enviar Datos a Widget StateFull',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ));
  }
}
