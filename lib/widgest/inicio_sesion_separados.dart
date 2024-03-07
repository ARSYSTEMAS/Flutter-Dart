import 'package:flutter/material.dart';

class iniciarSesionSeparados extends StatefulWidget {
  const iniciarSesionSeparados({super.key});

  @override
  State<iniciarSesionSeparados> createState() => _iniciarSesionSeparadosState();
}

class _iniciarSesionSeparadosState extends State<iniciarSesionSeparados> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sesion con widgets separados',
      home: Scaffold(body: cuerpo()),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://images.pexels.com/photos/20348751/pexels-photo-20348751/free-photo-of-arco-lunar.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          nombre(),
          textUser(),
          textPass(),
          buttonSingIn(),
        ],
      ),
    ),
  );
}

Widget nombre() {
  return const Text(
    'I N I C I A R  S E S I O N ',
    style: TextStyle(
      fontSize: 30,
      color: Colors.black87,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget textUser() {
  return Container(
    padding: const EdgeInsets.all(20),
    child: const TextField(
      decoration: InputDecoration(
        hintText: 'Introduce tu usuario',
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget textPass() {
  return Container(
    padding: const EdgeInsets.all(20),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Introduce el password',
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget buttonSingIn() {
  return ElevatedButton.icon(
    onPressed: () {
      print("You pressed Icon Elevated Button");
    },
    icon: Icon(Icons.account_circle_outlined),
    label: Text("Sing Up"),
  );
}
