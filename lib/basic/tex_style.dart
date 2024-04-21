import 'package:flutter/material.dart';

class TextStyle1 extends StatelessWidget {
  const TextStyle1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Latihab Text Style")),
      body: const Center(
          child: Text(
        "ini adalah latihan text style",
        style: TextStyle(
            fontFamily: 'poppinsbold',
            fontSize: 20,
            decoration: TextDecoration.overline,
            decorationColor: Colors.red,
            decorationThickness: 10,
            decorationStyle: TextDecorationStyle.wavy),
      )),
    );
  }
}
