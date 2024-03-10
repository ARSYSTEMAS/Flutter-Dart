import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _w = 100.0;
  double _h = 100.0;
  Color _color = Colors.blue;
  BorderRadius _borderRadius = BorderRadius.circular(100);

  void _changeContainer() {
    final ramdom = Random();

    _w = ramdom.nextInt(1000) + 1;
    _h = ramdom.nextInt(1000) + 1;
    _color = Color.fromRGBO(ramdom.nextInt(255) + 1, ramdom.nextInt(255) + 1,
        ramdom.nextInt(255) + 1, ramdom.nextInt(255) + 1);
    _borderRadius = BorderRadius.circular(ramdom.nextInt(100).toDouble());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                curve: Curves.bounceIn,
                width: _w,
                height: _h,
                decoration:
                    BoxDecoration(color: _color, borderRadius: _borderRadius),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: _changeContainer, child: Text('Cambiar Container')),
        ],
      ),
    );
  }
}
