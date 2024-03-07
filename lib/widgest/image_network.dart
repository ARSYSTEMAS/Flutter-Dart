import 'package:flutter/material.dart';

class ImageNetwork extends StatelessWidget {
  const ImageNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Network'),
        backgroundColor: Colors.green,
      ),
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Text("C"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Camila Valentina",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                //IMAGEN DESDE INTERNET
                Container(
                  width: double.infinity,
                  height: 200,
                  child: Image.network(
                    "https://2001online.com/wp-content/uploads/2019/06/e1094a6f74b924c596d0039dbc5f1b0c.jpg",
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          )),
      backgroundColor: Colors.grey[300],
    );
  }
}
