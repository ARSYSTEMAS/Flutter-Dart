import 'package:flutter/material.dart';

class alertDialog extends StatefulWidget {
  const alertDialog({
    super.key,
  });

  @override
  State<alertDialog> createState() => _alertDialogState();
}

class _alertDialogState extends State<alertDialog> {
  bool _subscrito = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                child: Text(
                  _subscrito ? "Dejar de Subscribirme" : "Subscribirme",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => {_mostrarAlerta(context)},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      _subscrito ? Colors.black : Colors.deepOrange),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(_subscrito ? 'Subscrito Si' : 'Subscrito No'),
          ],
        ));
  }

  //creamo una funcion

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      barrierDismissible: false, //no permite salir del dialogo
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            _subscrito ? "Cancelar Subscripcion" : "Subcripcion de canal",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          content: Text(_subscrito
              ? 'Dejar de  subscribirme al canal'
              : 'Deseas subscribirte al canal?'),
          actions: <Widget>[
            TextButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop(); // Cierra el diálogo
              },
            ),
            TextButton(
              child: Text('Si'),
              onPressed: () {
                setState(() {
                  _subscrito = !_subscrito;
                });
                Navigator.of(context).pop(); // Cierra el diálogo
              },
            ),
          ],
        );
      },
    );
  }
}
