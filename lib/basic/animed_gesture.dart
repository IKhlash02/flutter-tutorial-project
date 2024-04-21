import 'dart:math';

import 'package:flutter/material.dart';

class AnimedGesture10 extends StatefulWidget {
  const AnimedGesture10({super.key});

  @override
  State<AnimedGesture10> createState() => _AnimedGesture10State();
}

class _AnimedGesture10State extends State<AnimedGesture10> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Latihan Animed Container')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            color: Color.fromARGB(
              255,
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
            ),
            width: 50.0 + random.nextInt(101),
            height: 50.0 + random.nextInt(101),
          ),
        ),
      ),
    );
  }
}
