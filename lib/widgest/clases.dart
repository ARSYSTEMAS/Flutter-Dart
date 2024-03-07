import 'package:flutter/material.dart';

class Clases extends StatefulWidget {
  const Clases({super.key});

  @override
  State<Clases> createState() => _ClasesState();
}

class _ClasesState extends State<Clases> {
  final _empresa = Empresa(
      nombre: "FACEBOOK",
      propietario: "MARK SUCERKBER",
      ingresoAnual: 50000000);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Consumir Api Rest',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('El nombre de la empresa es ${_empresa.nombre}')),
          Center(
              child: Text(
                  'El nombre de dueno de la empresa es ${_empresa.propietario}')),
          Center(
              child: Text(
                  'Ganancias anuales de la empresa es ${_empresa.ingresoAnual}')),
        ],
      ),
    );
  }
}

class Empresa {
  String nombre;
  String propietario;
  int ingresoAnual;

  Empresa(
      {required this.nombre,
      required this.propietario,
      required this.ingresoAnual});
}
