import 'package:flutter/material.dart';

class IniciarSesion extends StatefulWidget {
  const IniciarSesion({super.key});

  @override
  _IniciarSesionState createState() => _IniciarSesionState();
}

class _IniciarSesionState extends State<IniciarSesion> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    username.text = ""; //innitail value of text field
    password.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Iniciar Sesion",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue.shade400,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                      controller: username,
                      decoration: InputDecoration(
                        labelText: "Username",
                        icon: Icon(Icons.people), //icon at head of input
                      )),
                  TextField(
                      controller: password,
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock), //icon at head of input
                          //prefixIcon: Icon(Icons.people), //you can use prefixIcon property too.
                          labelText: "Password",
                          suffixIcon:
                              Icon(Icons.remove_red_eye) //icon at tail of input
                          )),
                ],
              ),
            ),
          ],
        ));
  }
}
