import 'package:flutter/material.dart';

class paginaRuta01 extends StatefulWidget {
  const paginaRuta01({super.key});

  @override
  State<paginaRuta01> createState() => _paginaRuta01State();
}

class _paginaRuta01State extends State<paginaRuta01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Termino y condiciones'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Container(
                child: const Text(
                  "ddskfjdkfdkfdfljdkfjldskfjdslkfjdsklfjldsjflkdsjfldskfjldsfjkdsjdsvdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssfddskfjdkfdkfdfljdkfjldskfjdslkfjdsklfjldsjflkdsjfldskfjldsfjkdsjdsvdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssfddskfjdkfdkfdfljdkfjldskfjdslkfjdsklfjldsjflkdsjfldskfjldsfjkdsjdsvdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssf",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: (() => {Navigator.pop(context)}),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Aceptar los Terminos",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
