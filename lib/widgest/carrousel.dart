import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

//INSTALAR EL PACKAGE flutter pub add flutter_swiper_view
class Carrousel extends StatelessWidget {
  Carrousel({super.key});

  List<String> images = [
    'https://images.unsplash.com/photo-1611930022073-b7a4ba5fcccd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHN8ZW58MHwxfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1610824352934-c10d87b700cc?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fHByb2R1Y3RzfGVufDB8MXwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fHByb2R1Y3RzfGVufDB8MXwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1556228720-195a672e8a03?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTR8fHByb2R1Y3RzfGVufDB8MXwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrousel de imagenes'),
        backgroundColor: Colors.amberAccent,
      ),
      body: swipperModels(),
    );
  }

  Widget swipperModels() {
    return Container(
      width: double.infinity,
      height: 250,
      child: Swiper(
        itemBuilder: (context, index) {
          return Image.network(
            images[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: images.length,
        pagination: const SwiperPagination(),
        // control: const SwiperControl(),
        viewportFraction: 0.8,
        scale: 0.9,
      ),
    );
  }
}
