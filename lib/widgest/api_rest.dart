import 'package:aprendiendo_flutter/widgest/alert_dialog.dart';
import 'package:flutter/material.dart';

class ApiRest extends StatefulWidget {
  const ApiRest({super.key});

  @override
  State<ApiRest> createState() => _ApiRestState();
}

class _ApiRestState extends State<ApiRest> {
  // final _personas =
  //     Person(name: "FACEBOOK", lastname: "MARK SUCERKBER", phone: '3535-5654');

  final List<Person> _personas = [
    Person(name: 'Camila Valentina', lastname: 'Garcia Leal', phone: '0000000'),
    Person(name: 'Abigail', lastname: 'Carillo Leal', phone: '0000000'),
    Person(name: 'Sofia Alejandra', lastname: 'Perez', phone: '0000000'),
    Person(name: 'Alexanderson', lastname: 'Garcia ', phone: '0000000')
  ];

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
          backgroundColor: Colors.green,
        ),
        body: ListView.builder(
            itemCount: _personas.length,
            itemBuilder: (context, index) {
              return ListTile(
                onLongPress: () => {_deletePerson(context, _personas[index])},
                title: Text(
                    _personas[index].name + ' ' + _personas[index].lastname),
                subtitle: Text(_personas[index].phone),
                trailing: Icon(Icons.arrow_forward_ios), //coloca icono al final
                leading: CircleAvatar(
                  child: Text(_personas[index].name.substring(0, 1),
                      style: TextStyle(color: Colors.white)),
                  backgroundColor: Colors.amberAccent,
                ),
              );
            }));
  }

  _deletePerson(context, persona) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text("Eliminar Contacto"),
              content: Text(
                  "Estas seguro de eliminar a: ${persona.name + ' ' + persona.lastname}"),
              actions: [
                TextButton(
                    onPressed: () => {Navigator.pop(context)},
                    child: Text("Cancelar")),
                TextButton(
                    onPressed: () => {
                          setState(() {
                            _personas.remove(persona);
                            Navigator.pop(context);
                          })
                        },
                    child: Text("Borrar")),
              ],
            ));
  }
}

class Person {
  String name;
  String lastname;
  String phone;

  Person({required this.name, required this.lastname, required this.phone});
}
