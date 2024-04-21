import 'package:flutter/material.dart';
import 'package:learning_erico/basic/navigasi_multiple/second_navigasi.dart';

class NavigasiMain16 extends StatelessWidget {
  const NavigasiMain16({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main page')),
      body: Center(
          child: ElevatedButton(
        child: const Text('Go to second page'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const NavigasiSecond16();
          }));
        },
      )),
    );
  }
}
