import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//instalar el package flutter pub add shared_preferences

class PersistenciaDatos extends StatefulWidget {
  const PersistenciaDatos({super.key});

  @override
  State<PersistenciaDatos> createState() => _PersistenciaDatosState();
}

class _PersistenciaDatosState extends State<PersistenciaDatos> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<int> _counter;

  void reset() async {
    final SharedPreferences prefs = await _prefs;
    await prefs.remove('counter');
    _counter = _prefs.then((SharedPreferences prefs) {
      return 0;
    });

    setState(() {});
  }

  Future<void> _incrementCounter() async {
    final SharedPreferences prefs = await _prefs;
    final int counter =
        (prefs.getInt('counter') ?? 0) + 1; //getInt para leer el valor

    setState(() {
      _counter = prefs.setInt('counter', counter).then((bool success) {
        //setInt para registrar el valor
        return counter;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _counter = _prefs.then((SharedPreferences prefs) {
      return prefs.getInt('counter') ?? 0; // para leer el valor
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: const Text('Persistencia de Datos'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: FutureBuilder<int>(
                  future: _counter,
                  builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                    switch (snapshot.connectionState) {
                      case ConnectionState.none:
                      case ConnectionState.waiting:
                        return const CircularProgressIndicator();
                      case ConnectionState.active:
                      case ConnectionState.done:
                        if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          return Text(
                            '${snapshot.data}',
                            style: TextStyle(fontSize: 50),
                          );
                        }
                    }
                  })),
          ElevatedButton(onPressed: reset, child: Text('Resetear Contador'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
