import 'dart:convert';
import 'package:aprendiendo_flutter/models/gif.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class ApiRestII extends StatefulWidget {
  const ApiRestII({super.key});

  @override
  State<ApiRestII> createState() => _ApiRestIIState();
}

class _ApiRestIIState extends State<ApiRestII> {
  //creamos un future de tipo lista de la clase Gif
  late Future<List<Gif>>? _listGif;

  /// obtener los valorres con una funcion
  Future<List<Gif>> _getGifs() async {
    //Function
    final response = await http.get(Uri.parse(
        "https://api.giphy.com/v1/gifs/trending?api_key=VsmLmrybnNg8oxmUxCTQdt8tih48PBpF&limit=25&offset=0&rating=g&bundle=messaging_non_clips"));

    //inicializamos una lista de clase Gif

    List<Gif> gifs = [];

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);

      //convertir body en un objecto JSON

      final jsonData = jsonDecode(body); //convierte el string en un json

      for (var element in jsonData['data']) {
        gifs.add(
          Gif(element['title'], element['images']['original']['url']),
        );
      }

      return gifs;
    } else {
      throw Exception('Failed to load Gifts');
    }
  }

  @override
  void initState() {
    super.initState();
    _listGif = _getGifs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'GIPHY Upload API',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
        ),
        body: FutureBuilder(
          future: _listGif,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // return ListView(
              return GridView.count(
                crossAxisCount: 2,
                children: _listGifs(snapshot.data),
              );
            } else if (snapshot.hasError) {
              print(snapshot.error);
              return Text('error');
            }

            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }

  List<Widget> _listGifs(data) {
    List<Widget> gifs = [];

    for (var element in data) {
      gifs.add(Card(
          child: Column(
        children: [
          Expanded(
              child: Image.network(
            element.url,
            fit: BoxFit.fill,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                // La imagen se ha cargado completamente
                return child;
              } else {
                // Muestra el indicador de progreso circular mientras la imagen se carga
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )),
        ],
      )));
    }

    return gifs;
  }
}
