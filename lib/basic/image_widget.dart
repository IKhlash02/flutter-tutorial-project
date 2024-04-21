import 'package:flutter/material.dart';

class ImageWidget13 extends StatelessWidget {
  const ImageWidget13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Latihan Image')),
      body: Center(
          child: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              width: 300,
              height: 300,
              margin: const EdgeInsets.all(30),
              child: const Image(
                image: NetworkImage(
                    'https://w0.peakpx.com/wallpaper/327/452/HD-wallpaper-dark-anime-guy-phone.jpg'),
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
              ),
            ),
            Container(
              width: 300,
              height: 300,
              margin: const EdgeInsets.all(30),
              child: const Image(
                image: AssetImage('images/gambar.webp'),
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      )),
    );
  }
}
