import 'package:flutter/material.dart';

class PageStateFul extends StatefulWidget {
  final String _user;

  PageStateFul(this._user, {super.key});

  @override
  State<PageStateFul> createState() => _PageStateFulState();
}

class _PageStateFulState extends State<PageStateFul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recibiendo Datos'),
      ),
      body: Center(
        child: Text('El usuarios es ${widget._user}'),
      ),
    );
  }
}
