import 'package:flutter/material.dart';

class NavigasiSecond16 extends StatelessWidget {
  const NavigasiSecond16({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second page')),
      body: Center(
          child: ElevatedButton(
        child: const Text('Back'),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}
