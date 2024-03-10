import 'package:flutter/material.dart';

class PageStateLess extends StatelessWidget {
  final String _user;

  const PageStateLess(this._user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recibiendo Datos'),
      ),
      body: Center(child: Text('El Usuario es $_user')),
    );
  }
}
